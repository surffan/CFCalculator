<cfcomponent output="false">

	<cfscript>
		variables.currentValue = 0;
	
		function init()
		{
			return this;
		}
		
		function calculate(expression)
		{
			var value = reMatch("[0-9]+", expression);
			var operator = reMatch("[\+]", expression);
			
			variables.currentValue = currentValue + value[1];
		
			return currentValue;
		}
		
	</cfscript>
	

</cfcomponent>