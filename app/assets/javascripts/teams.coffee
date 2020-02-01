# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $(document).on 'change', '#counties_select', (evt) ->
    $.ajax 'update_clubs_list',
      type: 'GET'
      dataType: 'script'
      data: {
        county: $("#counties_select option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
        console.log("AJAX Error: #{errorThrown}")
      success: (data, textStatus, jqXHR) ->
        console.log("Dynamic country select OK!")