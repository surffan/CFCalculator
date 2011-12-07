<cfparam name="form.action" default="">
<h1>
	MyCalculator
</h1>
<p>
	Please insert a Number plus an operator +/- and other numbers. 
</p>
<cfform action="index.cfm" name="calculator">
	<cfinput name="action" type="hidden" value="calc">
	<cfinput name="calc" type="text">
	<cfinput name="sumit" type="submit" value="Calculate">
	<cfinput name="reset" type="submit" value="Reset" onclick="this.form.action.value='reset';">
</cfform>
<script>
	document.onkeyup = function(event){
	    if (event.keyCode == 107 || event.keyCode == 109) {
	        document.calculator.submit();
	    }
	}
	document.calculator.calc.focus();
</script>