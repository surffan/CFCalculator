<cfcomponent output="false">

	<cfscript>
		variables.currentValue = 0;
		variables.currentOperator = "";
	
		function init() {
			return this;
		}
		
		function calculate(expression) {
			var value = reMatch("[0-9]+", expression);
			var operator = reMatch("[\+-]", expression);
			
			switch(currentOperator) {
				case "": {
					variables.currentValue = value[1];
					break;
				}
				case "+": {
					variables.currentValue = currentValue + value[1];
					break;
				}
				case "-": {
					variables.currentValue = currentValue - value[1];
					break;
				}
			}
			
			if(ArrayLen(operator) > 0) {
				variables.currentOperator = operator[1];
			}
			else {
				variables.currentOperator = "";
			}
		
			return currentValue;
		}
		
		function reset() {
			variables.currentValue = 0;
			variables.currentOperator = "";
		}
		
		function getValue() {
			return variables.currentValue;
		}
		
	</cfscript>
	

</cfcomponent>