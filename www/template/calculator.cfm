<cfparam name="form.action" default="">
<h1>
	MyCalculator
</h1>
<p>
	Please insert your calculation into the field and hit the sumit button.
</p>
<cfform action="index.cfm">
	<cfinput name="action" type="hidden" value="calc">
	<cfinput name="calc" type="text">
	<cfinput name="sumit" type="submit" value="Submit!">
</cfform>

<cfswitch expression="#form.action#">
	<cfcase value="calc">
		<cfoutput>
			CALC!
		</cfoutput>
	</cfcase>
</cfswitch>