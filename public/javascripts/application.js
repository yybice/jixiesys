// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
function add_to_cart(item_id){
    var url = "/orders/add_to_cart";
    new Ajax.Request(url,{
        method: 'get',
        parameters:{
            item_id:item_id
        },
        onSuccess: function(response){
            alert('添加成功');
        }
    });
}

function remove_order_detail(obj,item_id){
    var url = "/orders/remove_from_cart"
    new Ajax.Request(url,{
        method: 'get',
        parameters:{
            item_id:item_id
        },
        onSuccess: function(response){
            obj.ancestors()[1].remove();
        }
    });
}