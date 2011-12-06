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
					calc = createObject("component", "domain.Calculator").init();
					writeOutput(calc.calculate("#form.calc#"));
				</cfscript>
			</cfcase>
		</cfswitch>
	</body>
</html>