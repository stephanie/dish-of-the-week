$ ->
  showPage = (url, templateFunc) ->
    $.ajax url,
      type: 'GET'
      dataType: 'json'
      success: (data) ->
        $('#content').html(templateFunc(data))

  $('section').on 'click', '#restaurant-info', (e) ->
    showPage "/api/restaurants/1", Handlebars.templates.restaurant

  $('section').on 'click', '#back', (e) ->
    showPage '/api/dishes/1', Handlebars.templates.dish

  $('section').on 'click', '#submission-form-btn', (e) ->
    id = $(@).data('id')
    console.log id
    showPage "/api/dishes/#{id}", Handlebars.templates.submission

  $('section').on 'submit', '#submission-form', (e) ->
    id = $(@).data('id')
    data = $(@).serialize()

    $.ajax "/api/curated_posts/#{id}",
      type: 'PATCH',
      data: data,
      success: (e) -> console.log(e),
      error: (x,y,z) -> console.log(x,y,z)
          
  showPage '/api/dishes/1', Handlebars.templates.dish