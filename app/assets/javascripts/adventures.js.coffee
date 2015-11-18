# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('form').on 'click', '.remove-fields', (event) ->
    console.log($(this).prev('input[type=hidden]'))
    $(this).prev('input[type=hidden]').attr('value', 'true')
    $(this).closest('.accordion-navigation').hide()
    event.preventDefault()

  $('form').on 'click', '.add-fields', (event) ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $('.accordion').append($(this).data('fields').replace(regexp, time))
    event.preventDefault()
