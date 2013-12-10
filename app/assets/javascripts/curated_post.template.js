(function() {
  var template = Handlebars.template, templates = Handlebars.templates = Handlebars.templates || {};
templates['curated_post'] = template(function (Handlebars,depth0,helpers,partials,data) {
  this.compilerInfo = [4,'>= 1.0.0'];
helpers = this.merge(helpers, Handlebars.helpers); data = data || {};
  var buffer = "", stack1, functionType="function", escapeExpression=this.escapeExpression, self=this;

function program1(depth0,data) {
  
  var buffer = "", stack1, stack2;
  buffer += "\n  <div id=\"dish-title\">\n    <div id=\"dish-title-content\">\n      <div id=\"dish-title-name\">";
  if (stack1 = helpers.dish_name) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = (depth0 && depth0.dish_name); stack1 = typeof stack1 === functionType ? stack1.call(depth0, {hash:{},data:data}) : stack1; }
  buffer += escapeExpression(stack1)
    + "</div>\n      <div id=\"dish-title-restaurant\">"
    + escapeExpression(((stack1 = ((stack1 = (depth0 && depth0.restaurant)),stack1 == null || stack1 === false ? stack1 : stack1.name)),typeof stack1 === functionType ? stack1.apply(depth0) : stack1))
    + "</div>\n    </div>\n  </div>\n</div>\n\n";
  stack2 = helpers['with'].call(depth0, (depth0 && depth0.restaurant), {hash:{},inverse:self.noop,fn:self.program(2, program2, data),data:data});
  if(stack2 || stack2 === 0) { buffer += stack2; }
  buffer += "\n";
  return buffer;
  }
function program2(depth0,data) {
  
  var buffer = "", stack1;
  buffer += "\n\n<script> \nL.marker([";
  if (stack1 = helpers.latitude) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = (depth0 && depth0.latitude); stack1 = typeof stack1 === functionType ? stack1.call(depth0, {hash:{},data:data}) : stack1; }
  buffer += escapeExpression(stack1)
    + ", ";
  if (stack1 = helpers.longitude) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = (depth0 && depth0.longitude); stack1 = typeof stack1 === functionType ? stack1.call(depth0, {hash:{},data:data}) : stack1; }
  buffer += escapeExpression(stack1)
    + "]).addTo(map).bindPopup(\"<p><strong>";
  if (stack1 = helpers.name) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = (depth0 && depth0.name); stack1 = typeof stack1 === functionType ? stack1.call(depth0, {hash:{},data:data}) : stack1; }
  buffer += escapeExpression(stack1)
    + "</strong></p><p>";
  if (stack1 = helpers.tel) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = (depth0 && depth0.tel); stack1 = typeof stack1 === functionType ? stack1.call(depth0, {hash:{},data:data}) : stack1; }
  buffer += escapeExpression(stack1)
    + "</p><p>";
  if (stack1 = helpers.cuisine_type) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = (depth0 && depth0.cuisine_type); stack1 = typeof stack1 === functionType ? stack1.call(depth0, {hash:{},data:data}) : stack1; }
  buffer += escapeExpression(stack1)
    + "</p><p>";
  if (stack1 = helpers.address) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = (depth0 && depth0.address); stack1 = typeof stack1 === functionType ? stack1.call(depth0, {hash:{},data:data}) : stack1; }
  buffer += escapeExpression(stack1)
    + "</p>\") \n\n$('#dish-title').delay(2000).fadeOut(2000, function() {\n\n  });\n\n$('a[href*=#]:not([href=#])').click(function() {\n    if (location.pathname.replace(/^\\//,'') == this.pathname.replace(/^\\//,'') \n        || location.hostname == this.hostname) {\n\n        var target = $(this.hash);\n        target = target.length ? target : $('[name=' + this.hash.slice(1) +']');\n           if (target.length) {\n             $('html,body').animate({\n                 scrollTop: target.offset().top\n            }, 800);\n            return false;\n        }\n    }\n});\n\n\n</script>\n\n  ";
  return buffer;
  }

  buffer += "<div id=\"dish-background\">\n  ";
  stack1 = helpers['with'].call(depth0, (depth0 && depth0.curated_post), {hash:{},inverse:self.noop,fn:self.program(1, program1, data),data:data});
  if(stack1 || stack1 === 0) { buffer += stack1; }
  return buffer;
  });
})();