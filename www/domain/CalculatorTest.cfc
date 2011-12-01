<cfcomponent extends="mxunit.framework.TestCase">
	<cfscript>
		
		function setUp() {
			variables.calculator = createobject("component","Calculator");
		}

		function tearDown() {
			
		}
		
		function testSimpleNumber() {
			fail("Not implemented yet");
		}
		
	</cfscript>
</cfcomponent>
