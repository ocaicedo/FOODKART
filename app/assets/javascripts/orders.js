
$(document).on('ready page:load', function(){
$('.addField').on('click', function(){
  var thisProduct = $(this).data("product-id");
  var input = $('<input>');

    input.attr('type', 'text');
    input.attr('name', "order[order_products_attributes]["+thisProduct+"][product_id]");
    input.attr('value', thisProduct);
    input.appendTo($('form'));
  });  
})

