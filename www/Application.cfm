<cfcomponent>
	<cfapplication name="calculator" sessionmanagement="yes">
	<cfif isDefined("session.calculator")>
	<cfelse>
		<cfset session.calculator = createObject("component", "domain.Calculator").init()/>
	</cfif>
</cfcomponent>