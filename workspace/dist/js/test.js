$( ".cross" ).hide();
$( ".menu_mb" ).hide();
$( ".hamburger" ).click(function() {
$( ".menu_mb" ).slideToggle( "slow", function() {
$( ".hamburger" ).hide();
$( ".cross" ).show();
});
});

$( ".cross" ).click(function() {
$( ".menu_mb" ).slideToggle( "slow", function() {
$( ".cross" ).hide();
$( ".hamburger" ).show();
});
});