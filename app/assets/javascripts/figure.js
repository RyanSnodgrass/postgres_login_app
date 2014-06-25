$(function() {
	
	$('.alert').on('click', function() {
		var row = $(this).parents('tr');
		// var figure_id = $(this).attr('data-figure-id');
		$(row).hide("slow");
	});

	// 	$.ajax({
	// 		url: "/figures/" + figure_id,
	// 		type: 'DELETE',
	// 		success: function(data){
	// 			if(data == "1") {
	// 				$(row).hide("slow");
	// 			}
	// 			else {
	// 				$(row).addClass(".failed");
	// 			}
	// 		}
	// 	});
	// });

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
				// if(data != "1") {
					console.log(data);
					$('#bool').empty();
					$('#bool').append(String(data));
						// $(this).load("/figures/")
					// })
				// }
				// else {
					$(row).addClass(".failed");
				// }
			}

		});
	});


});