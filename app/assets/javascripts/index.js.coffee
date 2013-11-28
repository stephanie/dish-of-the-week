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

  counter = 0

  $('section').on 'click', '#upvote-btn', (e) ->
    id = $(@).data('id')
    console.log id
    upvote = parseInt($('#upvote-btn').html()) + 1
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
          current = parseInt($('#upvote-btn').html()) 
          $('#upvote-btn').html(current + 1)
          console.log current
        error: (x,y,z) -> console.log(x,y,z)

  $('section').on 'click', '#downvote-btn', (e) ->
    id = $(@).data('id')
    console.log id
    downvote = parseInt($('#downvote-btn').html()) + 1
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
          current = parseInt($('#downvote-btn').html()) 
          $('#downvote-btn').html(current + 1)
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

