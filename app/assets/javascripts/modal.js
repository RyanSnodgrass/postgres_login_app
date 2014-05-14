console.log("my file is being read")
$( function() {
    $('#login').click( function() {
        $('.overlay').css({
            "display": "inherit"
        });
    });
    $('.close-reveal-modal').click( function() {
        $('.overlay').css({
            "display": "none"
        });
    });
});




