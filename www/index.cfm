<html>
	<head>
		<title>
			MyCalculator
		</title>
	</head>
	<body>
		<cfinclude template="template/calculator.cfm">
		<cfswitch expression="#form.action#">
			<cfcase value="calc">
				<cfscript>
					session.calculator.calculate("#form.calc#");
				</cfscript>
			</cfcase>
			<cfcase value="reset">
				<cfscript>
					session.calculator.reset();
				</cfscript>
			</cfcase>
		</cfswitch>
		
		<cfscript>
			writeOutput("History: #session.calculator.getHistory()#<br/>");
			writeOutput("Result: #session.calculator.getValue()#");
		</cfscript>
		
	</body>
</html>