# To change this template, choose Tools | Templates
# and open the template in the editor.

class Cart
  def initialize
    @items = Array.new
  end
  
  def add_item(item_id)
    item = Item.find(item_id)
    @items << item unless @items.include?(item)
    return item
  end

  def remove_item(item_id)
    item = Item.find(item_id)
    @items.delete(item)
  end

  def items
    @items
  end

  def nil?
    @items.nil?
  end
end
