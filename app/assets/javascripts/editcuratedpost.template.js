(function() {
  var template = Handlebars.template, templates = Handlebars.templates = Handlebars.templates || {};
templates['editcuratedpost'] = template(function (Handlebars,depth0,helpers,partials,data) {
  this.compilerInfo = [4,'>= 1.0.0'];
helpers = this.merge(helpers, Handlebars.helpers); data = data || {};
  var stack1, functionType="function", escapeExpression=this.escapeExpression, self=this;

function program1(depth0,data) {
  
  var buffer = "", stack1;
  buffer += "\n  <form id=\"edit-curated-post-form\" data-id=\"";
  if (stack1 = helpers.id) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = (depth0 && depth0.id); stack1 = typeof stack1 === functionType ? stack1.call(depth0, {hash:{},data:data}) : stack1; }
  buffer += escapeExpression(stack1)
    + "\">\n    <input type=\"text\" name=\"curated_post[dish_name]\" value=\"";
  if (stack1 = helpers.dish_name) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = (depth0 && depth0.dish_name); stack1 = typeof stack1 === functionType ? stack1.call(depth0, {hash:{},data:data}) : stack1; }
  buffer += escapeExpression(stack1)
    + "\">\n    <input type=\"submit\"> \n  </form>\n";
  return buffer;
  }

  stack1 = helpers.each.call(depth0, (depth0 && depth0.dishes), {hash:{},inverse:self.noop,fn:self.program(1, program1, data),data:data});
  if(stack1 || stack1 === 0) { return stack1; }
  else { return ''; }
  });
})();