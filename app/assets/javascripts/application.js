// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require_foundation
//= require sign_in
//= require modal
//= require figure
//= require turbolinks
//= require_tree .

// function IsEmpty(){
// 	if(document.forms['frm'].question.value == "")
// 	{
// 		alert("empty");
// 		return false;
// 	}
// 		return true;
// }

// $('form').submit(function () {

//     // Get the Login Name value and trim it
//     var name = $.trim($('#log').val());

//     // Check if empty of not
//     if (name  === '') {
//         alert('Text-field is empty.');
//         return false;
//     }
// });


$('submit').click(function(){
   if($('#user_email').val() == ''){
      alert('Input can not be left blank');
   }
});




















