jQuery(document).ready(function($){
	// Calls the selectBoxIt method on your HTML select box
  select_box();
	

	/* Widget minimize */

	$('.wminimize').click(function(e){
	    e.preventDefault();
	    var $wcontent = $(this).parent().parent().next('.widget-content');
	    if($wcontent.is(':visible')) 
	    {
	      $(this).children('i').removeClass('icon-chevron-up');
	      $(this).children('i').addClass('icon-chevron-down');
	    }
	    else 
	    {
	      $(this).children('i').removeClass('icon-chevron-down');
	      $(this).children('i').addClass('icon-chevron-up');
	    }            
	    $wcontent.toggle(500);
	}); 

	/* CL Editor */
  if($('textarea').hasClass('cleditor')){
    $(".cleditor").cleditor({
      width: "auto",
      height: "auto"
    });
  }
});

/* Navigation */

$(document).ready(function(){

  $(window).resize(function()
  {
    if($(window).width() >= 765){
      $(".sidebar #nav").slideDown(350);
    }
    else{
      $(".sidebar #nav").slideUp(350); 
    }
  });


  $("#nav > li > a").on('click',function(e){
      if($(this).parent().hasClass("has_sub")) {
        e.preventDefault();
      }   

      if(!$(this).hasClass("subdrop")) {
        // hide any open menus and remove all other classes
        $("#nav li ul").slideUp(350);
        $("#nav li a").removeClass("subdrop");
        
        // open our new menu and add the open class
        $(this).next("ul").slideDown(350);
        $(this).addClass("subdrop");
      }
      
      else if($(this).hasClass("subdrop")) {
        $(this).removeClass("subdrop");
        $(this).next("ul").slideUp(350);
      } 
      
  });
});

$(document).ready(function(){
  $(".sidebar-dropdown a").on('click',function(e){
      e.preventDefault();

      if(!$(this).hasClass("open")) {
        // hide any open menus and remove all other classes
        $(".sidebar #nav").slideUp(350);
        $(".sidebar-dropdown a").removeClass("open");
        
        // open our new menu and add the open class
        $(".sidebar #nav").slideDown(350);
        $(this).addClass("open");
      }
      
      else if($(this).hasClass("open")) {
        $(this).removeClass("open");
        $(".sidebar #nav").slideUp(350);
      }
  });

});

function select_box(){
  $("select").selectBoxIt({
    showEffect: "fadeIn",
    showEffectSpeed: 400,
    hideEffect: "fadeOut",
    hideEffectSpeed: 400,
    showFirstOption: false
  });
}