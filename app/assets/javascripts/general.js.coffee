window.checkboxValidation = ->
  selected_pc = $(".pc_games :input:checked").length
  if selected_pc > 1
    $(".pc_games :input:not(:checked)").attr("disabled",true)
  else
    $('.pc_games :input').removeAttr('disabled')
  selected_video = $(".video_games :input:checked").length
  if selected_video > 1
    $(".video_games :input:not(:checked)").attr("disabled",true)
  else
    $('.video_games :input').removeAttr('disabled')

$ ->
  $('body').on 'touchstart.dropdown', '.dropdown-menu', (e) ->
    e.stopPropagation()
  $(document).on 'click','.dropdown-menu a', ->
    document.location = $(@).attr('href')

  $('.video_games :input').change ->
    checkboxValidation()
  $('.pc_games :input').change ->
    checkboxValidation()
  checkboxValidation()

  $('#countdown #time').kkcountdown
    dayText : 'D'
    daysText : 'D'
    hoursText : 'H'
    minutesText : 'M'
    secondsText : 'S'
    displayZeroDays : false

