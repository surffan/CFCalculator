<cfcomponent extends="mxunit.framework.TestCase">
	<cfscript>
		
		function setUp() {
			calculator = createobject("component","Calculator");
		}

		function tearDown() {
			
		}
		
		function testEmpthyInput() {
			calculator.calculate("");
			assertEquals(0,calculator.getValue());
		}
		
		function testSimpleNumber() {
			calculator.calculate("42");
			assertEquals(42, calculator.getValue());
		}
		
		function testSimpleAddidition() {
			calculator.calculate("5+");
			assertEquals(5, calculator.getValue());
			calculator.calculate("4");
			assertEquals(9,calculator.getValue());
		}
		
		function testMultipleAddition() {
			calculator.calculate("1+");
			calculator.calculate("2+");
			calculator.calculate("3");
			assertEquals(6,calculator.getValue());
		}
		
		function testSubtraction() {
			var act = 0;
			calculator.calculate("12-");
			calculator.calculate("4");
			assertEquals(8,calculator.getValue());
		}
		
		function testReset() {
			calculator.calculate("13");
			calculator.reset();
			calculator.getValue();
			assertEquals(0,calculator.getValue());
		}
		
		function testSimpleHistory() {
			calculator.calculate("12");
			assertEquals("12",calculator.getHistory());
		}
		
		function testHistoryInProgress() {
			calculator.calculate("4+");
			assertEquals("4+",calculator.getHistory());
			calculator.calculate("5-");
			assertEquals("4+5-",calculator.getHistory());
			calculator.calculate("6");
			assertEquals("4+5-6",calculator.getHistory());
		}
		
		function testHistoryReset() {
			calculator.calculate("43+");
			calculator.calculate("3");
			assertEquals("43+3",calculator.getHistory());
			calculator.reset();
			assertEquals("",calculator.getHistory());
		}
		
		function testHistoryWhenNoCalculationIsDone() {
			calculator.calculate("12");
			calculator.calculate("42");
			assertEquals("42",calculator.getHistory());
		}
		
	</cfscript>
</cfcomponent>
