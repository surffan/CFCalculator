<cfcomponent extends="mxunit.framework.TestCase">
	<cfscript>
		
		function setUp() {
			variables.calculator = createobject("component","Calculator");
		}

		function tearDown() {
			
		}
		
		function testSimpleNumber() {
			var actual = variables.calculator.calculate("42");
			assertEquals("42", actual);
		}
		
	</cfscript>
</cfcomponent>
