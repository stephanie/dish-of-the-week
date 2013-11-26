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

  $('section').on 'click', '#edit-form-btn', (e) ->
    id = $(@).data('id')
    console.log id
    showPage "/api/dishes/#{id}", Handlebars.templates.editcuratedpost

  $('section').on 'submit', '#edit-curated-post-form', (e) ->
    id = $(@).data('id')
    data = $(@).serialize()

    $.ajax "/api/curated_posts/#{id}",
      type: 'PATCH',
      data: data,
      success: (e) -> console.log(e),
      error: (x,y,z) -> console.log(x,y,z)

  $('#submission-submit-btn').on 'click', (e) ->
    dish_name = $('input#dish-name').val()
    dish_description = $('textarea#dish-description').val()
    blog_link = $('input#blog-link').val()
    restaurant_neighborhood = $('input#restaurant-neighborhood').val()

    console.log dish_name
    console.log dish_description
    console.log restaurant_neighborhood
    console.log blog_link

    $.ajax "/api/submissions",
      type: 'POST',
      contentType: 'application/json',
      data: JSON.stringify({ 
        submission: { 
          dish_name: dish_name,
          dish_description: dish_description,
          restaurant_neighborhood: restaurant_neighborhood,
          blog_link: blog_link
        }
      }),
      success: (e) -> console.log(e),
      error: (x,y,z) -> console.log(x,y,z)
          
  showPage '/api/dishes/1', Handlebars.templates.dish