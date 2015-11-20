# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('form').on 'click', '.remove-fields', (event) ->
    $(this).prev('input[type=hidden]').attr('value', 'true')
    $(this).parentsUntil('.remove-fields-wrapper').parent().hide()
    event.preventDefault()

  $('form').on 'click', '.add-fields', (event) ->
    id = $(this).data('id')
    fields =$(this).data('fields')

    time = new Date().getTime()
    regex = new RegExp(id, 'g')
    fields = fields.replace(regex, time) # replace id with time (unique 'id')

    $(this).next('.add-fields-wrapper').append(fields)
    event.preventDefault()
