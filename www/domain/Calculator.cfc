<cfcomponent output="false">

	<cfscript>
		currentValue = 0;
		currentOperator = "";
		history = "";
	
		function init() {
			return this;
		}
		
		function calculate(expression) {
			var value = reMatch("[0-9]+", expression);
			var operator = reMatch("[\+-]", expression);
			history = history & expression;
			
			if(ArrayLen(value) > 0) {
				switch(currentOperator) {
					case "": {
						currentValue = value[1];
						history = expression;
						break;
					}
					case "+": {
						currentValue = currentValue + value[1];
						break;
					}
					case "-": {
						currentValue = currentValue - value[1];
						break;
					}
				}
			}
		
			if(ArrayLen(operator) > 0) {
				currentOperator = operator[1];
			}
			else {
				currentOperator = "";
			}
			return currentValue;
		}
		
		function reset() {
			currentValue = 0;
			currentOperator = "";
			history = "";
		}
		
		function getValue() {
			return currentValue;
		}
		
		function getHistory() {
			return history;
		}
		
	</cfscript>
	

</cfcomponent>