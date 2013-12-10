(function() {
  var template = Handlebars.template, templates = Handlebars.templates = Handlebars.templates || {};
templates['submission'] = template(function (Handlebars,depth0,helpers,partials,data) {
  this.compilerInfo = [4,'>= 1.0.0'];
helpers = this.merge(helpers, Handlebars.helpers); data = data || {};
  var buffer = "", stack1, functionType="function", escapeExpression=this.escapeExpression, self=this;

function program1(depth0,data) {
  
  var buffer = "", stack1, stack2;
  buffer += "\n<span id=\"topofpage\"></span>\n<button id=\"second-page-link-box\">\n  <a href=\"#restaurant-info\" id=\"second-page-link\">LEARN MORE ABOUT THIS DISH @ "
    + escapeExpression(((stack1 = ((stack1 = (depth0 && depth0.restaurant)),stack1 == null || stack1 === false ? stack1 : stack1.name)),typeof stack1 === functionType ? stack1.apply(depth0) : stack1))
    + "</a>\n</button>\n\n<div id=\"votes-box-container\">\n  <div id=\"votes-box\">\n    <div id=\"dish-logo\">\n      DISH!\n    </div>\n    <button id=\"tried-btn\" data-id=\"";
  if (stack2 = helpers.id) { stack2 = stack2.call(depth0, {hash:{},data:data}); }
  else { stack2 = (depth0 && depth0.id); stack2 = typeof stack2 === functionType ? stack2.call(depth0, {hash:{},data:data}) : stack2; }
  buffer += escapeExpression(stack2)
    + "\"><span id=\"tried-count\">";
  if (stack2 = helpers.up_vote) { stack2 = stack2.call(depth0, {hash:{},data:data}); }
  else { stack2 = (depth0 && depth0.up_vote); stack2 = typeof stack2 === functionType ? stack2.call(depth0, {hash:{},data:data}) : stack2; }
  buffer += escapeExpression(stack2)
    + "</span> TRIED THIS</button>\n    <br />\n    <button id=\"liked-btn\" data-id=\"";
  if (stack2 = helpers.id) { stack2 = stack2.call(depth0, {hash:{},data:data}); }
  else { stack2 = (depth0 && depth0.id); stack2 = typeof stack2 === functionType ? stack2.call(depth0, {hash:{},data:data}) : stack2; }
  buffer += escapeExpression(stack2)
    + "\"><span id=\"liked-count\">";
  if (stack2 = helpers.down_vote) { stack2 = stack2.call(depth0, {hash:{},data:data}); }
  else { stack2 = (depth0 && depth0.down_vote); stack2 = typeof stack2 === functionType ? stack2.call(depth0, {hash:{},data:data}) : stack2; }
  buffer += escapeExpression(stack2)
    + "</span> LIKED THIS</button>\n    <div id=\"clicked\">0</div>\n  </div>\n</div>\n  ";
  stack2 = helpers['with'].call(depth0, (depth0 && depth0.restaurant), {hash:{},inverse:self.noop,fn:self.program(2, program2, data),data:data});
  if(stack2 || stack2 === 0) { buffer += stack2; }
  buffer += "\n";
  return buffer;
  }
function program2(depth0,data) {
  
  var buffer = "", stack1;
  buffer += "\n    <button id=\"submission-btn\" data-toggle=\"modal\" data-target=\"#myModal\" data-id=\"";
  if (stack1 = helpers.id) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = (depth0 && depth0.id); stack1 = typeof stack1 === functionType ? stack1.call(depth0, {hash:{},data:data}) : stack1; }
  buffer += escapeExpression(stack1)
    + "\">\n      HAVE ANOTHER FAVORITE DISH AT THIS RESTAURANT?\n    </button>\n\n    <div class=\"modal fade\" id=\"myModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\">\n      <div class=\"modal-dialog\">\n        <div class=\"modal-content\">\n          <div class=\"modal-header\">\n            <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>\n            <h4 class=\"modal-title\" id=\"myModalLabel\">Recommend a dish at ";
  if (stack1 = helpers.name) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = (depth0 && depth0.name); stack1 = typeof stack1 === functionType ? stack1.call(depth0, {hash:{},data:data}) : stack1; }
  buffer += escapeExpression(stack1)
    + "</h4>\n          </div>\n          <div class=\"modal-body\">\n            <form id=\"submission-form\">\n              <input id=\"full-name\" type=\"text\" class=\"form-control\" placeholder=\"Your full name\">\n              </br>\n              <input id=\"dish-name\" type=\"text\" class=\"form-control\" placeholder=\"Dish name\">\n              </br>\n              <textarea id=\"dish-description\" rows=\"8\" class=\"form-control\" placeholder=\"Dish description\"></textarea>\n              </br>\n              <input id=\"blog-link\" type=\"text\" class=\"form-control\" placeholder=\"Blog link (optional)\">\n            </form>\n          </div>\n          <div class=\"modal-footer\">\n            <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Cancel</button>\n            <button type=\"button\" id=\"submission-submit-btn\" class=\"btn btn-primary\" data-id=\"";
  if (stack1 = helpers.id) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = (depth0 && depth0.id); stack1 = typeof stack1 === functionType ? stack1.call(depth0, {hash:{},data:data}) : stack1; }
  buffer += escapeExpression(stack1)
    + "\">Submit</button>\n          </div>\n        </div>\n      </div>\n    </div>\n  ";
  return buffer;
  }

  stack1 = helpers['with'].call(depth0, (depth0 && depth0.curated_post), {hash:{},inverse:self.noop,fn:self.program(1, program1, data),data:data});
  if(stack1 || stack1 === 0) { buffer += stack1; }
  buffer += "\n\n<script>\n\n$(document).ready(function() {\n  $('#submission-btn').hide();\n  $('#second-page-link-box').hide();\n  $('#votes-box').hide();\n  $('#submission-btn').delay(4000).fadeIn(2000);\n  $('#second-page-link-box').delay(4000).fadeIn(2000);\n  $('#votes-box').delay(4000).fadeIn(2000);\n\n});\n\n</script>\n";
  return buffer;
  });
})();