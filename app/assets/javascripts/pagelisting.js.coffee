# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->   
  pagenum = 1
  page = Math.ceil($(".allpage").val()/4)
  $(".all").val(page)
  $(".body_left_job").on "click", ".menu a", (e) ->
      $(".menu a").each (i,e) ->
        $(e).removeClass("selected")
      $(this).addClass("selected")
  
  $("#pagination").on "click", ".prev", (e) ->
    if pagenum>1
      
      pagenum = pagenum - 1
    $(".pagecount").val(pagenum) 
    $(".allpagecount").val(pagenum*4-4)
    $(".next").removeAttr('disabled');
     
    if pagenum <2 
      $(".prev").attr("disabled","disabled") 
  $("#pagination").on "click", ".next", (e) ->
    if pagenum <page
      $(".prev").removeAttr('disabled');
      pagenum = pagenum + 1
      $(".pagecount").val(pagenum)
      $(".allpagecount").val(pagenum*4-4)
    if pagenum >page-1
      $(".next").attr("disabled","disabled") 
     
  $(".body_left_job").on "click", ".cancel", (e) ->
    window.location.reload(true);
  
  $(".body_left_job").on "click", ".back", (e) ->
    window.location.reload(true);
  
    return 
    
