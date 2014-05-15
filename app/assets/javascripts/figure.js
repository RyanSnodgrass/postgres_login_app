$( function() {
	var ready;
	ready = function() {


	
	$('.alert').on('click', function() {
		var row = $(this).parents('tr');
		var figure_id = $(this).attr('data-figure-id');


		$.ajax({

			url: "/figures/" + figure_id,
			type: 'DELETE',

			success: function(data){
				if(data == "1") {
					$(row).hide("slow");
				}
				else {
					$(row).addClass(".failed");
				}
			}


		});
	});

	$('.success').on('click', function() {
		var row = $(this).parents('tr');
		var figure_id = $(this).attr('data-figure-id');
		
		$.ajax({
			url: "/figures/" + figure_id,
			type: 'PATCH',
			data: {
				figure: {
					"converted_pastafarian": true
				}
			},
		success: function(data){
			if(data == "1") {
				
			}
			else {
				$(row).addClass(".failed");
			}
		}

		});
	});
	};

	$(document).ready(ready);
	$(document).on('page:load', ready);
});