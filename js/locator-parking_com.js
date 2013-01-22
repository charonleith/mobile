var _watermark = "Enter address, city, landmark or zip";
var _pageSize = 7;
var _pageIndex = 1;
var _rowCount = 0;
var _pageCount = 0;
var _googleLocation = false;
var _lat;
var _lng;
var _title;
var _isPageLoad = false;
var _imageRoot = "/App_Themes/Default/Images/Locator/"

//google map variables
var _map, _markers, _latlng, _latlngbounds, _loadStreetView = true;

$(document).ready(function() {
	_isPageLoad = true;

	$("#javascript-diabled").hide();
	$("#static-list").hide();
	$("#searchForm").show();

	// Do not load default map is this is a postback
	if (isPostBack() == false) {
		LoadDefaultMap();
	}

	$("#toggle-map").click(function() {
		toggleMap();
		return false;
	});

	$("#txtSearch").keydown(function(event) {
		if (event.which === $.ui.keyCode.ENTER) {
			event.preventDefault();

			resetSearch();

			$("#pager").hide();

			$("#output").fadeOut('slow', function() {
				$("#lot-list #ajax-loader").show();
				searchLocations($("#txtSearch").val());
			});
		}
	});

	if ($("#txtSearch").val() == "") {
		$("#txtSearch").val(_watermark);
	}

	$("#txtSearch").focus(function() {
		if (this.value == _watermark) {
			this.value = "";
		}
	}).blur(function() {
		if (this.value == "") {
			this.value = _watermark;
		}
	});

	$("#multipleResultsDialog").dialog({
		bgiframe: false,
		height: 225,
		width: 350,
		modal: true,
		autoOpen: false,
		open: function(event, ui) {
			IEModalFix();
		}
	});

	$("#messageDialog").dialog({
		modal: true,
		autoOpen: false,
		position: [470, 295],
		resizable: false,
		buttons: {
			Ok: function() {
				$(this).dialog('close');
			}
		},
		open: function(event, ui) {
			IEModalFix();
		}
	});

	$("#helpDialog").load("/Search/LotSearchHelp.htm", function() {
		$(this).dialog({
			modal: true,
			autoOpen: false,
			position: [370, 260],
			resizable: false,
			width: 550,
			buttons: {
				Ok: function() {
					$(this).dialog('close');
				}
			},
			open: function(event, ui) {
				IEModalFix();
			}
		});
	});

	$("#printDialog").dialog({
		modal: true,
		autoOpen: false,
		position: "center",
		resizable: true,
		width: 630,
		height: 550,
		buttons: {
			Ok: function() {
				$(this).dialog('close');
			}
		},
		open: function(event, ui) {
			$("#printDialogIframeId").show();
			IEModalFix();
		},
		close: function(event, ui) {
			$("#printDialogIframeId").hide();
		}
	});

	$("#printDialog").append("<iframe id=\"printDialogIframeId\" src=\"/Search/LotPrint.aspx\" height=\"750px\" width=\"100%\" frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" style=\"display: none;\"></iframe>");

	$("#btnLocate").click(function() {
		resetSearch();

		$("#pager").hide();

		$("#output").fadeOut('slow', function() {
			$("#lot-list #ajax-loader").show();
			searchLocations($("#txtSearch").val());
		});
	});

	$("#prev").click(function(event) {
		event.preventDefault();
		_pageIndex -= 1;

		$("#pager").hide();

		$("#output").fadeOut('slow', function() {
			$("#lot-list #ajax-loader").show();
			GetLotsByLatitudeAndLongitude(_lat, _lng, $("#txtSearch").val(), _pageIndex, true);
		});
	});

	$("#next").click(function(event) {
		event.preventDefault();
		_pageIndex += 1;

		$("#pager").hide();
		$("#output").fadeOut('slow', function() {
			$("#lot-list #ajax-loader").show();
			GetLotsByLatitudeAndLongitude(_lat, _lng, $("#txtSearch").val(), _pageIndex, true);
		});
	});

	$("#help").click(function(event) {
		event.preventDefault();
		$("#helpDialog").dialog("open");
	});

	_isPageLoad = false;
});

function toggleMap() {
	if ($("#lot-list").is(":visible")) {
		$("#lot-list").hide();
		$("#map-container").hide();
		$("#map_canvas").hide();
		$("#pager").hide();
		$("#map-container").width("735px");
		$("#map_canvas").width("735px");

		$("#map_canvas").fadeIn(500);
		$("#map-container").fadeIn(500);

		$("#toggle-map img").attr("src", _imageRoot + "map-collapse-icon.png");
	}
	else {
		$("#lot-list").hide();
		$("#map-container").hide();
		$("#map_canvas").hide();
		$("#pager").hide();
		$("#map-container").width("504px");
		$("#map_canvas").width("504px");

		$("#map_canvas").fadeIn(500);
		$("#map-container").fadeIn(500);
		$("#lot-list").fadeIn(500);
		$("#pager").fadeIn(500);

		$("#toggle-map img").attr("src", _imageRoot + "map-expand-icon.png");
	}

	_map.checkResize();
	centerMap();
}

function LoadDefaultMap() {
	if (GBrowserIsCompatible()) {
		$("#lot-list #ajax-loader").hide();
		$("#lot-list").hide();
		$("#toggle-map").hide();

		$("#map-container").width("735px");
		$("#map_canvas").width("735px");

		var map = new GMap2(document.getElementById("map_canvas"));
		map.setCenter(new GLatLng(34.74161249883172, -95.2734375));
		map.setZoom(3);
		map.setUIToDefault();
	}
}

function searchLocations(phrase) {
	if (phrase == _watermark) return;

	$("#output").fadeOut('slow', function() {
		$("#lot-list #ajax-loader").show();
	});

	_googleLocation = false;
	_title = undefined

	$("#btnLocate").attr("disabled", true);
	$("#aliasWrapper").hide();

	var isLotCode = false;
	$.getJSON("/services/Locator.svc/IsLotCode?lotCode=" + phrase, function(result) {
		isLotCode = result;
		if (isLotCode) {
			GetLotByLotCode(phrase);
		}
		else {
			GetMapPoints(phrase);
		}
	});

	$("#btnLocate").removeAttr("disabled");
	
	pageTracker._trackPageview("/search/Search.aspx/" + phrase)
}

function GetLotByLotCode(phrase) {
	$.getJSON("/services/Locator.svc/GetLotByLotCode?lotCode=" + phrase, function(result) {
		if (result == null) {
			LoadDefaultMap();
			$("#messageDialog span").html("There is no lot that matches the lot code enter : " + phrase);
			$("#messageDialog").dialog("open");
			return;
		}
		else {
			_pageCount = 1;
			_rowCount = 1;
			lotHtml = getLotHtml(0, 0, result.Lots[0]);
			GenerateListAndMap(phrase, lotHtml, result.Lots[0].Latitude, result.Lots[0].Longitude, result.Lots, 0, 0, true);
		}
	});
}

function GetMapPoints(phrase) {
	$.getJSON("/services/Locator.svc/GetMapPoints?searchContext=" + phrase, function(points) {
		var pointCount = points.Count;
		if (pointCount > 0) {
			if (pointCount > 1 && _googleLocation == false) {
				var html = "<ul>";
				$.each(points.Data, function(i, result) {
					html += "<li>";
					html += "<a href=\"javascript:void(0);\" onclick=\"GetLotsByLatitudeAndLongitude(" + result.Latitude + ", " + result.Longitude + ", '" + escape(result.Title) + "', " + _pageIndex + ", true)\">" + result.Title + "</a>";
					html += "</li>";
				});
				html += "</ul>";

				$("#multipleResultsDialog #results").html(html);
				$("#multipleResultsDialog").dialog("open");
				return;
			}
			else {
				GetLotsByLatitudeAndLongitude(points.Data[0].Latitude, points.Data[0].Longitude, phrase, _pageIndex, true);
			}
		}
		else {
			$("#messageDialog span").html("There are no lots near " + phrase + ". Please verify that the spelling is correct.");
			$("#messageDialog").dialog("open");
		}
	});
}

function GetLotsByLatitudeAndLongitude(latitude, longitude, title, pageIndex, setBookmark) {
	var isDialogOpen = $("#multipleResultsDialog").dialog("isOpen");
	if (isDialogOpen) {
		_googleLocation = true;
		$("#multipleResultsDialog").dialog("close");
	}

	$.getJSON("/services/Locator.svc/GetLotsByLatitudeAndLongitude?latitude=" + latitude + "&longitude=" + longitude + "&pagesize=" + _pageSize + "&pageindex=" + pageIndex, function(results) {
		_rowCount = results.RowCount;

		if (_rowCount < 1) {
			LoadDefaultMap();
			$("#messageDialog span").html("There are no lots near " + _title + ". Please verify that the spelling is correct.");
			$("#messageDialog").dialog("open");
			return;
		}

		var startPageIndex = ((_pageSize * pageIndex) - _pageSize);
		_pageCount = Math.ceil(_rowCount / _pageSize);
		var list = "";
		$.each(results.Lots, function(i, lot) {
			var lotHtml = getLotHtml(i, startPageIndex, lot);
			list += lotHtml;
		});

		GenerateListAndMap(title, list, latitude, longitude, results.Lots, pageIndex, startPageIndex, false, setBookmark);
	});
}

function GenerateListAndMap(title, list, latitude, longitude, lots, pageIndex, startPageIndex, isLotCode, setBookmark) {
	_lat = latitude;
	_lng = longitude;
	_pageIndex = pageIndex;

	if (typeof(_title) == "undefined")
		_title = unescape(title);

	$("#txtSearch").val(_title);

	$("#lot-list #ajax-loader").hide();
	$("#lot-list #output").empty();
	$("#lot-list #output").append(list);

	$("#lot-list #output").fadeIn('slow', function() {
		createMap(latitude, longitude, 2640, lots, startPageIndex);
	});

	if ($("#lot-list").is(":visible") == false) {
		$("#lot-list").hide();
		$("#map-container").hide();
		$("#map_canvas").hide();
		$("#pager").hide();
		$("#map-container").width("504px");
		$("#map_canvas").width("504px");

		$("#map_canvas").fadeIn(500);
		$("#map-container").fadeIn(500);
		$("#lot-list").fadeIn(500);
		
		if (_pageCount > 1)
			$("#pager").fadeIn(500);

		$("#toggle-map img").attr("src", _imageRoot + "map-expand-icon.png");
		$("#toggle-map").show();
	}

	if (_pageCount > 1)
		togglePager(pageIndex);

	$("#results-inner #lot-list #lots-found").html(_rowCount + " lots found near " + _title);
	$("#results-inner #lot-list #lots-found").show();

	if (setBookmark)
		$.address.value("Lat=" + _lat + "&Lng=" + _lng + "&page=" + _pageIndex + "&title=" + _title + "&islotcode=" + isLotCode);
}

function getLotHtml(index, startPageIndex, lot) {
	var address = lot.Address;
	var city = lot.City;
	var state = lot.State;
	var zipCode = lot.ZipCode;
	var phone = lot.Phone;
	var rate = lot.Rate;
	var distance = lot.Distance;
	var lat = lot.Latitude;
	var lng = lot.Longitude;
	var number = (startPageIndex + index) + 1

	var lotHtml = "<div id=\"lot_" + number + "\" class=\"lot\" onclick=\"showDetail(this, " + index + ")\">";
	lotHtml += "<div class=\"pushpin\">";
	lotHtml += "<div>" + number + "</div>";
	lotHtml += "</div>";
	lotHtml += "<div class=\"lot-maincol\">";
	lotHtml += "<span class=\"street\">" + address + "</span>";
	lotHtml += "<span class=\"locality\">" + city + "</span>, ";
	lotHtml += "<span class=\"region\">" + state + "</span> ";
	lotHtml += "<span class=\"postal-code\">" + zipCode + "</span>";

	if (phone)
		lotHtml += "<span class=\"phone\">" + phone + "</span>";

	//lotHtml += "<span class=\"rate\">Rate: " + rate + "</span>";

	lotHtml += "</div>";

	lotHtml += "<div class=\"distance\" style=\"width: 25px; float: right; border-left: solid 1px darkgray; padding-left: 10px;\">";
	lotHtml += "<span style=\"display: block;\">" + distance + "</span>";
	lotHtml += "<span>mil</span>";
	lotHtml += "</div>";

	lotHtml += "</div>";

	return lotHtml;
}

function togglePager(pageIndex) {
	$("#pager").show();
	if (pageIndex == 1) {
		$("#prev").hide();
		$("#pager span").hide();
	}
	else {
		$("#prev").show();

		if (pageIndex != _pageCount)
			$("#pager span").show();
	}

	if (_pageIndex == _pageCount) {
		$("#next").hide();
		$("#pager span").hide();
	}
	else {
		$("#next").show();

		if (pageIndex > 1)
			$("#pager span").show();
	}
}

function resetSearch() {
	_pageIndex = 1;
}

function createMap(lat, lng, distance, lots, startIndex) {
	if (GBrowserIsCompatible()) {
		var index = startIndex;
		_latlng = new GLatLng(lat, lng);
		_map = new GMap(document.getElementById("map_canvas"));
		//http://code.google.com/apis/maps/documentation/controls.html
		_map.addControl(new GLargeMapControl3D());
		_map.addControl(new GMapTypeControl());
		_map.enableScrollWheelZoom();

		var greenIcon = new GIcon(G_DEFAULT_ICON);
		greenIcon.image = _imageRoot + "marker_green.png";

		markerOptions = { icon: greenIcon };
		_map.addOverlay(new GMarker(_latlng, markerOptions));

		_latlngbounds = new GLatLngBounds();
		_markers = [];

		$.each(lots, function(i, lot) {
			point = new GLatLng(lot.Latitude, lot.Longitude);

			var marker = createMarker(
									index,
									lot
								);

			_map.addOverlay(marker);
			_markers.push(marker);

			index++;
		});

		centerMap();

		GEvent.addListener(_map, 'click', function(overlay, point) {
			//_loadStreetView = false;
		})

		GEvent.addListener(_map, "infowindowclose", function() {
			_loadStreetView = true;
		});
	}
}

function createMarker(index, lot) {
	var latlng = new GLatLng(lot.Latitude, lot.Longitude);

	_latlngbounds.extend(latlng);

	var icon = new GIcon();
	icon.image = _imageRoot + "pushpin_default.png";
	icon.iconSize = new GSize(28, 40);
	icon.iconAnchor = new GPoint(14, 20);
	icon.infoWindowAnchor = new GPoint(25, 7);

	opts = {
		"icon": icon,
		"clickable": true,
		"labelClass": "map-label",
		"labelText": index + 1,
		"labelOffset": new GSize(-4, 4)
	};

	var marker = new LabeledMarker(latlng, opts);
	var handler = createMarkerClickHandler(marker, lot);

	GEvent.addListener(marker, "click", handler);

	return marker;
}

function createMarkerClickHandler(marker, lot) {
	return function() {
		var lat = lot.Latitude;
		var lng = lot.Longitude;
		var desc = lot.LotDescription;
		var city = lot.City;
		var state = lot.State;
		var zip = lot.ZipCode;
		var phone = lot.Phone;

		var locationTabHtml = createLocationTab(lot.RateTypes, lot.HoursOfOperation);
		var featuresTabHtml = createFeaturesTab(lot.ServiceTypes, lot.FacilityTypes, lot.HeightRestricted,
			lot.HeightRestriction, lot.VehicleTypes, lot.SpaceCount);
		var streetTabHtml = createStreetTab();

		if ($.browser.msie) {
			$("#printDialogIframeId").ready(function() {
				setPrintDialogHtml(locationTabHtml, featuresTabHtml, lat, lng, desc, city, state, zip, phone)
			});
		}
		else {
			$("#printDialogIframeId").load(function() {
				setPrintDialogHtml(locationTabHtml, featuresTabHtml, lat, lng, desc, city, state, zip, phone)
			});
		}

		var footerHtml = "<span id=\"info-window-footer\">";
		footerHtml += "<a href=\"" + _parkCentralDomain + "CreateAccount.aspx?lot=" + lot.FacilityId + "\">Sign Up for Monthly Parking</a> | ";
		footerHtml += "<a href=\"http://maps.google.com/maps?daddr=" + desc + ", " + city + ", " + state + " " + zip + "&hl=en\" target=\"_blank\">Directions</a> | ";
		footerHtml += "<a id=\"printInfo\" href=\"javascript:openPrintDialog();\">Print Info</a>";
		footerHtml += "</span>";

		// Create an array that will hold the tabs   
		var tabs = [];
		// Create tabs and add them to the array
		tabs.push(new GInfoWindowTab('Location', locationTabHtml + footerHtml, locationTabClick));
		tabs.push(new GInfoWindowTab('Features', featuresTabHtml + footerHtml, featureTabClick));
		tabs.push(new GInfoWindowTab('Street', streetTabHtml + footerHtml, streeViewTabClick));
		// Add tabs to the InfowWindow
		marker.openInfoWindowTabsHtml(tabs);

		return false;
	};
}

function createLocationTab(rateTypes, hours, footerHtml) {
	var tabHtml = "<div id=\"location\" class=\"info-window-tab\">";

	var monthlyRate = "";
	if (rateTypes) {
		$.each(rateTypes, function(i, rate) {
			if (rate.RateTypeDescription.toLowerCase() == "monthly - unreserved") {
				if (rate.RateBucketDescription.toLowerCase() == "do not publish") {
					monthlyRate = "CALL";
				}
				else {
					monthlyRate = rate.RateBucketDescription;
				}
			}
		});
	}

	if (monthlyRate == "")
		monthlyRate = "CALL";
	
	tabHtml += "<div><strong>MONTHLY RATE</strong>: " + monthlyRate  + "</div>";

	tabHtml += "<div class=\"info-window-tab-title margin\">HOURLY RATES</div>"
	tabHtml += "<div class=\"info-window-tab-title-border\"></div>";
	var rateHtml = "";
	if (rateTypes) {
		$.each(rateTypes, function(i, rate) {
			rateHtml += createRateLabel(rate.RateTypeDescription, rate.RateBucketDescription);
		});
	}

	if (rateHtml == "")
		rateHtml = "<span>CALL</span>";

	tabHtml += rateHtml;

	tabHtml += "<div class=\"info-window-tab-title margin\">HOURS</div>"
	tabHtml += "<div class=\"info-window-tab-title-border\"></div>";

	tabHtml += "<div id=\"hours-operation\">";
	var hoursHtml = "";
	if (hours) {
		$.each(hours, function(i, element) {
			hoursHtml += "<div>";
			hoursHtml += "<div class=\"days\">" + element.Days + "</div>";
			hoursHtml += "<div class=\"hours\"><i>" + element.Hours + "</i></div>";
			hoursHtml += "<div class=\"clear\"></div>";
			hoursHtml += "</div>";
		});
	}

	if (hoursHtml == "")
		hoursHtml = "<span>CALL</span>";

	tabHtml += hoursHtml;

	tabHtml += "</div>";

	tabHtml += "</div>";

	return tabHtml;
}

function createFeaturesTab(serviceTypes, facilityTypes, heightRestricted, heightRestrictions, vehicles, spaceCount, footerHtml) {
	var tabHtml = "<div id=\"features\" class=\"info-window-tab\">";

	//service types
	tabHtml += "<div style=\"font-weight: bold;\">SERVICE TYPES</div>"
	tabHtml += "<div class=\"info-window-tab-title-border\"></div>";

	var serviceTypeHtml = "";
	if (serviceTypes) {
		serviceTypeHtml += "<ul class=\"multi-column-list service-types\">";
		$.each(serviceTypes, function(i, service) {
			serviceTypeHtml += "<li>" + service + "</li>";
		});
		serviceTypeHtml += "</ul>";
		serviceTypeHtml += "<div class=\"clear\"></div>";
	}

	if (serviceTypeHtml == "")
		serviceTypeHtml = "<span>CALL</span>";

	tabHtml += serviceTypeHtml;

	//facility types
	tabHtml += "<div class=\"info-window-tab-title margin\">FACILITY TYPES</div>"
	tabHtml += "<div class=\"info-window-tab-title-border\"></div>";

	var facilityTypeHtml = "";
	if (facilityTypes) {
		facilityTypeHtml += "<ul class=\"multi-column-list facility-types\">";
		$.each(facilityTypes, function(i, facility) {
			facilityTypeHtml += "<li>" + facility + "</li>";
		});
		facilityTypeHtml += "</ul>";
		facilityTypeHtml += "<div class=\"clear\"></div>";
	}

	if (facilityTypeHtml == "")
		facilityTypeHtml = "<span>CALL</span>";

	tabHtml += facilityTypeHtml;

	//height restrictions
	tabHtml += "<div class=\"info-window-tab-title margin\">HEIGHT RESTRICTIONS</div>"
	tabHtml += "<div class=\"info-window-tab-title-border\"></div>";
	//tabHtml += "<span style=\"display: block\">";

	if (heightRestricted)
		tabHtml += heightRestrictions + "<br />";
	else {
		tabHtml += "There are no height restrictions";
	}
	
	//tabHtml + "</span>";

	//vehicle types
	tabHtml += "<div class=\"info-window-tab-title margin\">VEHICLES ACCEPTED</div>"
	tabHtml += "<div class=\"info-window-tab-title-border\"></div>";

	var vehicleHtml = "";
	if (vehicles) {
		vehicleHtml += "<ul class=\"multi-column-list vehicles\">";
		$.each(vehicles, function(i, vehicle) {
			vehicleHtml += "<li>" + vehicle + "</li>";
		});
		vehicleHtml += "</ul>";
		vehicleHtml += "<div class=\"clear\"></div>";
	}

	if (vehicleHtml == "")
		vehicleHtml = "<span>CALL</span>";

	tabHtml += vehicleHtml;

	//number of spaces
	if (spaceCount == null || spaceCount < 1) {
		spaceCount = "CALL";
	}

	tabHtml += "<div id=\"space-count\">";
	tabHtml += "<div class=\"title\">NUMBER OF SPACES: </div>"
	tabHtml += "<div class=\"count\">" + spaceCount + "</div>";
	tabHtml += "<div class=\"clear\"></div>";
	tabHtml += "</div>";

	tabHtml += "</div>";

	return tabHtml;
}

function createStreetTab(footerHtml) {
	var tabHtml = "<div name=\"pano\" id=\"pano\" class=\"info-window-tab\"></div>";
	return tabHtml;
}

function createRateLabel(desc, price) {
	var html = "";
	var labelValue;
	if (price.toLowerCase() == "do not publish")
		return html;
		//labelValue = "CALL";
	else
		labelValue = price;

	var name;
	if (desc.toLowerCase().indexOf("transient - 1st hour") >= 0)
		name = "1st Hour";
	else if (desc.toLowerCase().indexOf("transient - 10 hour") >= 0)
		name = "10 Hour";
	else if (desc.toLowerCase().indexOf("event rate") >= 0)
		name = "Event Rate"
	else
		return html;

	html = "<div>";
	html += "<div style=\"float: left; width: 75px;\">" + name + ": </div>";
	html += "<div style=\"float: left; text-align: left; width: 150px;\"><i>" + labelValue + "</i></div>";
	html += "<div class=\"clear\"></div>";
	html += "</div>";

	return html
}

function locationTabClick(a, b) {
	_map.getInfoWindow().selectTab(0);
}

function featureTabClick(a, b) {
	_map.getInfoWindow().selectTab(1);
}

function streeViewTabClick(a, b) {
	_map.getInfoWindow().selectTab(2);

	var mkrPoint = _map.getInfoWindow().getPoint();

	if (_loadStreetView) {
		var panoClient = new GStreetviewClient();
		var mkrPano = new GStreetviewPanorama(document.getElementById("pano"));
		GEvent.addListener(mkrPano, "error", handleNoFlash);

		panoClient.getNearestPanoramaLatLng(mkrPoint, function(point) {
			mkrPano.setLocationAndPOV(point);
			_loadStreetView = false;
		});
	}
}

function openPrintDialog() {
	$("#printDialog").dialog("open");
}

function setPrintDialogHtml(location, features, lat, lng, desc, city, state, zip, phone) {
	var latlng = new GLatLng(lat, lng);

	$("#printDialogIframeId").contents().find("#location-wrapper").html(location);
	$("#printDialogIframeId").contents().find("#features-wrapper").html(features);

	$("#printDialogIframeId").contents().find("#location").addClass("print-location");
	$("#printDialogIframeId").contents().find("#features").addClass("print-features");

	$("#printDialogIframeId").contents().find("#map").attr("src", "http://maps.google.com/maps/api/staticmap?center=" + latlng + "&zoom=14&markers=icon:http://www.parking.com/Content/Images/Locator/pushpin_default.png|" + latlng + "&size=560x410&sensor=false");

	var address = "<div id=\"address\" class=\"info-window-tab print-address\">";
	address += "<div class=\"info-window-tab-title\">ADDRESS</div>";
	address += "<div class=\"info-window-tab-title-border\"></div>";
	address += "<span style=\"display: block;\">" + desc + "</span>";
	address += "<span>" + city + ", </span>";
	address += "<span>" + state + " </span>";
	address += "<span>" + zip + "</span>";

	if (phone)
		address += "<span style=\"display: block;\">" + phone + "</span>";

	address += "</div>";

	$("#printDialogIframeId").contents().find("#location-wrapper").prepend(address);
}

function handleNoFlash(errorCode) {
	if (errorCode == 603) {
		$("#pano").html("Error: Flash doesn't appear to be supported by your browser");
		//alert("Error: Flash doesn't appear to be supported by your browser");
		return;
	}
}

//http://911-need-code-help.blogspot.com/2009/03/zoom-to-fit-all-markers-polylines-or.html
function centerMap() {
	_map.setCenter(_latlngbounds.getCenter(), _map.getBoundsZoomLevel(_latlngbounds));
}

function showDetail(element, index) {
	GEvent.trigger(_markers[index], 'click');

	$("#lot-list .lot").each(function(i) {
		this.style.background = "";
	});

	$(element).css("background-color", "#C0C0C0");

	return false;
}

// Removes leading and ending whitespaces, nbsps
function trim(str) {
	return str.replace(/(^[\s\xA0]+|[\s\xA0]+$)/g, '');
}

function IEModalFix() {
	$("body").css("overflow","hidden");
}

function isPostBack() {
	if (typeof(_isAlias) == "undefined")
		_isAlias = false;

	if ($.address.value() == "/" && _isAlias)
		return true;
	else if ($.address.value() != "/")
		return true;
	else
		return false;
}

$(window).unload(function() {
	GUnload;
});

// Address handler
$.address.internalChange(function(event) {
	// do nothing
});

// Address handler
$.address.externalChange(function(event) {
	if (event.value != "/")
		RestoreState(event.value);
	else
		if (_lat != null && _lng != null && _title != null)
			GetLotsByLatitudeAndLongitude(_lat, _lng, _title, 1, false);
});

function RestoreState(eventValue) {
	var value = eventValue.substring(1, eventValue.length)
	var splitValue = value.split("&");
	var lat;
	var lng;
	var title;
	var pageIndex;
	var isLotCode;

	$.each(splitValue, function(i, item) {
		var equalIndex = item.toLowerCase().indexOf("=") + 1;

		if (item.toLowerCase().indexOf("lat") >= 0)
			lat = item.substring(equalIndex, item.length)

		if (item.toLowerCase().indexOf("lng") >= 0)
			lng = item.substring(equalIndex, item.length)

		if (item.toLowerCase().indexOf("page") >= 0)
			pageIndex = item.substring(equalIndex, item.length)

		if (item.toLowerCase().indexOf("title") >= 0)
			title = item.substring(equalIndex, item.length)

		if (item.toLowerCase().indexOf("islotcode") >= 0)
			isLotCode = item.substring(equalIndex, item.length)
	});

	
	if (lat != null && lng != null && pageIndex != null && title != null && isLotCode != null) {
		SetBrowserTitle(title);
		if (isLotCode == true) {
			GetLotByLotCode(title);
		}
		else {
			GetLotsByLatitudeAndLongitude(lat, lng, title, parseInt(pageIndex), false);
		}
	}
}

function SetBrowserTitle(title) {
	$.address.title(_pageTitle + " | " + title);
}