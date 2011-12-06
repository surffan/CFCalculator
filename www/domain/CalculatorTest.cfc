<cfcomponent extends="mxunit.framework.TestCase">
	<cfscript>
		
		function setUp() {
			variables.calculator = createobject("component","Calculator");
		}

		function tearDown() {
			
		}
		
		function testSimpleNumber() {
			var actual = variables.calculator.calculate("42");
			assertEquals(42, actual);
		}
		
		function testSimpleAddidition() {
			var actual = variables.calculator.calculate("5+");
			assertEquals(5, actual);
			actual = variables.calculator.calculate("4");
			assertEquals(9,actual);
		}
		
		function testMultipleAddition() {
			var act = 0;
			variables.calculator.calculate("1+");
			variables.calculator.calculate("2+");
			act = variables.calculator.calculate("3");
			assertEquals(6,act);
		}
		
		function testSubtraction() {
			var act = 0;
			variables.calculator.calculate("12-");
			act = variables.calculator.calculate("4");
			assertEquals(8,act);
		}
		
		function testReset() {
			var act = 0;
			variables.calculator.calculate("13");
			variables.calculator.reset();
			act = variables.calculator.getValue();
			assertEquals(0,act);
		}
		
	</cfscript>
</cfcomponent>
