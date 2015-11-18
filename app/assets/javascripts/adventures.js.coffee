# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('form').on 'click', '.delete-danger', (event) ->
    $(this).prev('input[type=hidden]').val('1')
    $(this).closest('.accordion-navigation').hide()
    event.preventDefault()
