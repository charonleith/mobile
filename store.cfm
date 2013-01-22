<cfparam name="form.data" default="">
<cfset session.data = deserializeJSON(form.data)>