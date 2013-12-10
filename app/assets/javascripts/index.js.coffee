$ ->
  showLandingPage = (url, templateFunc) ->
    $.ajax url,
      type: 'GET'
      dataType: 'json'
      success: (data) ->
        $('#content').html(templateFunc(data))
        if (data.curated_post.dish_image_url)
          $('#dish-background').css('background-image', 'url(' + data.curated_post.dish_image_url + ')')

  showSubmissionPage = (url, templateFunc) ->
    $.ajax url,
      type: 'GET'
      dataType: 'json'
      success: (data) ->
        $('#submission-page').html(templateFunc(data))

  showMapContentPage = (url, templateFunc) ->
      $.ajax url,
        type: 'GET'
        dataType: 'json'
        success: (data) ->
          $('#map-content').html(templateFunc(data))

  counter = 0

  $('div').on 'click', '#tried-btn', (e) ->
    id = $(@).data('id')
    console.log id
    upvote = parseInt($('#tried-count').html()) + 1
    console.log upvote

    counter++
    $('#clicked').text(counter)
    console.log counter

    if (counter < 2)
      $.ajax "/api/curated_posts/#{id}",
        type: 'PATCH',
        contentType: 'application/json',
        data: JSON.stringify({ 
          curated_post: { 
            up_vote: upvote,
          },
        }),
        success: (data) ->
          current = parseInt($('#tried-count').html()) 
          $('#tried-count').html(current + 1)
          console.log current
        error: (x,y,z) -> console.log(x,y,z)

  $('div').on 'click', '#liked-btn', (e) ->
    id = $(@).data('id')
    console.log id
    downvote = parseInt($('#liked-count').html()) + 1
    console.log downvote

    counter++
    $('#clicked').text(counter)
    console.log counter

    if (counter < 2)
      $.ajax "/api/curated_posts/#{id}",
        type: 'PATCH',
        contentType: 'application/json',
        data: JSON.stringify({ 
          curated_post: { 
            down_vote: downvote,
          },
        }),
        success: (data) ->
          current = parseInt($('#liked-count').html()) 
          $('#liked-count').html(current + 1)
          console.log current
        error: (x,y,z) -> console.log(x,y,z)

  $('div').on 'click', '#submission-submit-btn', (e) ->
    id = $(@).data('id')
    name = $(@).data('restaurant')
    console.log 'clicked'

    full_name = $('input#full-name').val()
    dish_name = $('input#dish-name').val()
    dish_description = $('textarea#dish-description').val()
    blog_link = $('input#blog-link').val()

    console.log dish_name
    console.log dish_description
    console.log blog_link
    console.log full_name

    $.ajax "/api/restaurants/#{id}/submissions",
      type: 'POST',
      contentType: 'application/json',
      data: JSON.stringify({ 
        submission: { 
          full_name: full_name,
          dish_name: dish_name,
          dish_description: dish_description,
          blog_link: blog_link,
          restaurant_id: id
        },
      }),
      success: (e) -> console.log(e),
      error: (x,y,z) -> console.log(x,y,z)

  showSubmissionPage '/api/curated_posts/random', Handlebars.templates.submission
  showLandingPage '/api/curated_posts/random', Handlebars.templates.curated_post
  showMapContentPage '/api/curated_posts/random', Handlebars.templates.curated_map_post


