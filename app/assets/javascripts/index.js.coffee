$ ->
  showLandingPage = (url, templateFunc) ->
    $.ajax url,
      type: 'GET'
      dataType: 'json'
      success: (data) ->
        $('#content').html(templateFunc(data))
        if (data.curated_post.dish_image_url)
          $('#dish-background').css('background-image', 'url(' + data.curated_post.dish_image_url + ')')

  showTest = (url, templateFunc) ->
    $.ajax url,
      type: 'GET'
      dataType: 'json'
      success: (data) ->
        $('#test').html(templateFunc(data))

  showTest 'api/curated_posts/random', Handlebars.templates.test

  $('section').on 'click', '#edit-form-btn', (e) ->
    console.log 'clicked'
    showTest 'api/curated_posts/random', Handlebars.templates.testagain

  $('section').on 'click', '#upvote-btn', (e) ->
    id = $(@).data('id')
    console.log id
    upvote = parseInt($('#upvote-btn').html()) + 1
    console.log upvote

    $.ajax "/api/curated_posts/#{id}",
      type: 'PATCH',
      contentType: 'application/json',
      data: JSON.stringify({ 
        curated_post: { 
          up_vote: upvote,
        },
      }),
      success: (data) ->
        current = parseInt($('#upvote-btn').html()) 
        $('#upvote-btn').html(current + 1)
        console.log current
      error: (x,y,z) -> console.log(x,y,z)

  $('section').on 'click', '#downvote-btn', (e) ->
    id = $(@).data('id')
    console.log id
    downvote = parseInt($('#downvote-btn').html()) + 1
    console.log downvote

    $.ajax "/api/curated_posts/#{id}",
      type: 'PATCH',
      contentType: 'application/json',
      data: JSON.stringify({ 
        curated_post: { 
          down_vote: downvote,
        },
      }),
      success: (data) ->
        current = parseInt($('#downvote-btn').html()) 
        $('#downvote-btn').html(current + 1)
        console.log current
      error: (x,y,z) -> console.log(x,y,z)

  # $('section').on 'click', '#upvote-btn', (e) ->
  #   id = $(@).data('id')
  #   console.log id
  #   upvote = parseInt($('#upvote-btn').html()) + 1
  #   console.log upvote

  #   $.ajax "/api/curated_posts/#{id}/upvote",
  #     type: 'PATCH',
  #     success: (e) -> console.log(e),
  #     error: (x,y,z) -> console.log(x,y,z)

  # $('section').on 'click', '#downvote-btn', (e) ->
  #   id = $(@).data('id')
  #   console.log id
  #   downvote = $('#downvote-btn').val()
  #   console.log downvote

  #   $.ajax "/api/curated_posts/#{id}/downvote",
  #     type: 'PATCH',
  #     success: (e) -> console.log(e),
  #     error: (x,y,z) -> console.log(x,y,z)

  $('section').on 'submit', '#edit-curated-post-form', (e) ->
    id = $(@).data('id')
    data = $(@).serialize()

    $.ajax "/api/curated_posts/#{id}",
      type: 'PATCH',
      data: data,
      success: (e) -> console.log(e),
      error: (x,y,z) -> console.log(x,y,z)

  $('#submission-submit-btn').on 'click', (e) ->
    full_name = $('input#full-name').val()
    dish_name = $('input#dish-name').val()
    dish_description = $('textarea#dish-description').val()
    blog_link = $('input#blog-link').val()
    restaurant_neighborhood = $('input#restaurant-neighborhood').val()
    restaurant_name = $('input#restaurant-name').val()

    console.log dish_name
    console.log dish_description
    console.log restaurant_neighborhood
    console.log blog_link
    console.log full_name
    console.log restaurant_name

    $.ajax "/api/submissions",
      type: 'POST',
      contentType: 'application/json',
      data: JSON.stringify({ 
        submission: { 
          full_name: full_name,
          dish_name: dish_name,
          dish_description: dish_description,
          restaurant_neighborhood: restaurant_neighborhood,
          blog_link: blog_link
        },
      }),
      restaurant_name: restaurant_name,
      success: (e) -> console.log(e),
      error: (x,y,z) -> console.log(x,y,z)

  showLandingPage 'api/curated_posts/random', Handlebars.templates.curated_post
