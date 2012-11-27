# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

# ckecbox ckecked count
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
  $('.video_games :input').change ->
    checkboxValidation()
  $('.pc_games :input').change ->
    checkboxValidation()
  checkboxValidation()

