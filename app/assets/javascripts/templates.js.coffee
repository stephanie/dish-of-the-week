@dishOfTheWeek =
  dishTemplate: Handlebars.compile '
    <ul>
      {{#each dishes}}
        <li>{{dish_name}}</li>
        <li>{{dish_description}}</li>
        <li>{{price}}</li>
        <li>{{restaurant_name}}</li>
        <li><button id="submission-form-btn" data-id="{{id}}">Edit</button></li>
      {{/each}}
    </ul>
    <p><a id="restaurant-info" href="#" data-id="2">Where to find this?</a></p>
  '

  submissionTemplate: Handlebars.compile '
    {{#each dishes}}
      <form id="submission-form" data-id="{{id}}">
        <input type="text" name="curated_post[dish_name]" value="{{dish_name}}">
        <input type="submit"> 
      </form>
    {{/each}}
  '

  restaurantTemplate: Handlebars.compile "
    <ul>
      {{#with restaurants.[0]}}
        <li>{{name}}</li>
        <li>{{location}}</li>
        <li>{{tel}}</li>
        <li>{{cuisine_type}}</li>
        <li>{{price_range}}</li>
      {{/with}}
    </ul>
    <p><a id=\"back\" href=\"#\">Back</a></p>
    "