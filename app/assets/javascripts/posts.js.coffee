# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


$ ->
  $('.slide-control div').click ->
    $('.slide-control div.active').removeClass('active')
    $(this).addClass('active')
    pos = $(this).parent().index()
    $('.slide.active').removeClass('active')
    $($('.slide')[pos]).addClass('active')
    # clearInterval(interval)

  interval = setInterval ( ->
    if $('.slide-control .active').parent().next().length == 0
      a = $('.slide-control').children().first()
    else
      a = $('.slide-control .active').parent().next()
    pos = $(a).index()
    $('.slide-control div.active').removeClass('active')
    $(a).children().first().addClass('active')
    $('.slide.active').removeClass('active')
    $($('.slide')[pos]).addClass('active')), 5000
    
  $('.with-tooltip').tooltip()
