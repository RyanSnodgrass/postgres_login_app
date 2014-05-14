console.log("my file is being read")
$(function() {
		var theseInputs = $( ":input" );

	$( "form" ).submit(function( event ) {
		for (var i = 0; i < theseInputs.length; i++ ) {
			if ( $(theseInputs[i]).val() === "" ) {
				event.preventDefault();
				alert("Please enter all fields");
				break;
			};
		};
	});

	$('.fsm').click( function() {
		$(this).toggleClass("FSM");
	});

}); 