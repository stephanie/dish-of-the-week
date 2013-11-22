$ ->

  $('section').on 'click', 'ul li', (e) ->
    id = $(@).data('id')
    $.ajax "/api/restaurants/#{id}",
      type: 'GET',
      dataType: 'json',
      success: (data) ->
        source = $('#restaurant-template').html()
        template = Handlebars.compile(source)
        output = template(data.restaurants[0])
        $('#content').html(output)

  $.ajax '/api/restaurants',
    type: 'GET',
    dataTye: 'json',
    success: (data) ->
      #Get the template from the script element
      source = $('#restaurants-template').html()
      
      #Compile the template to a JS function
      template = Handlebars.compile(source)
      
      #Call the template function and pass in the data to return the html
      output = template(data)

      #Insert that html into the section element
      $('#content').html(output)