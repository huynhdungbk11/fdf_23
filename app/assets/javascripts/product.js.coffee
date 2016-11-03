$(document).on 'turbolinks:load', ->
  $('#products').dataTable()
  sPaginationType: "full_numbers"
