console.log("my file is being read")
$( function() {
    var modal = $('.overlay');
    $('#login').click( function() {
        modal.css({
            "display": "inherit"
        });
    });
    $('.close-reveal-modal').click( function() {

        modal.css({
            "display": "none"
        });
    });
});




