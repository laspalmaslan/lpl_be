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

  $('.twitter').sharrre
    share: { twitter: true },
    enableHover: false,
    enableTracking: true,
    template: "<div class='box'><a href='#' class='share social-share-button-twitter'><i class='icon-twitter'></i></a></div>"
    click: (api, options) ->
      api.simulateClick()
      api.openPopup('twitter')

  $('.facebook').sharrre
    share: { facebook: true },
    enableHover: false,
    enableTracking: true,
    template: "<div class='box'><a href='#' class='share social-share-button-facebook'><i class='icon-facebook'></i></a></div>"
    click: (api, options) ->
      api.simulateClick()
      api.openPopup('facebook')

  $('.fake-social').click ->
    alert('No puedes compartir un articulo no publicado')
  $('a.print-preview').printPreview()
