<cfparam name="url.step" default="1">
<cfset step = session.data[url.step]>

<div data-role="page" data-theme="e">

	<div data-role="header">
		<h1>Driving Directions - Step <cfoutput>#url.step# of #arrayLen(session.data)#</cfoutput></h1>
	</div>

	<div data-role="content">	
		<cfoutput>
		<h1>Step #url.step#</h1>
		<p>
		<b>Duration:</b> #step.duration#<br/>
		<b>Distance:</b> #step.distance#<br/>
		</p>
		<p>
		#step.text#
		</p>		

		<p>
		<img src="http://maps.google.com/maps/api/staticmap?center=#step.endlat#,#step.endlon#&zoom=14&size=200x200&maptype=roadmap
&sensor=false">
		</p>
		
		<div data-inline="true">
			<cfif url.step is 1>
				<a href="" data-role="button" data-theme="c" data-inline="true">Previous</a>
			<cfelse>
				<a href="driving.cfm?step=#url.step-1#" data-role="button" data-inline="true">Previous</a>
			</cfif>
			<cfif url.step is arrayLen(session.data)>
				<a href="" data-role="button" data-theme="c" data-inline="true">Next</a>
			<cfelse>
				<a href="driving.cfm?step=#url.step+1#" data-role="button" data-inline="true">Next</a>
			</cfif>
		</cfoutput>
		
	</div>

	<div data-role="footer">
		<h4>Page Footer</h4>
	</div>

</div>