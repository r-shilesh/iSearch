<html>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
<script type="text/javascript" src="./javascript.js"></script>
<script
    src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCJnj2nWoM86eU8Bq2G4lSNz3udIkZT4YY&sensor=false">
</script>
    <script>
    $(document).ready(function() {
    	var availableTags = ['shilesh','shilu'
    	];
    	$( "#text" ).autocomplete({
    	  	source: availableTags
    	});
  	});
    </script>
    <script>
    $(document).ready(function() {
    	var availableTags = ['ramesh','ramu'
    	];
    	$( "#text" ).autocomplete({
    	  	source: availableTags
    	});
  	});
    </script>
<input type="text" id="text">
</html>