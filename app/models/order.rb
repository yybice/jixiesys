class Order < ActiveRecord::Base
  belongs_to :customer
  has_many :order_details,:dependent=>:destroy

  def build_order_details(items)
    items.each do |item|
      self.order_details.build({:order_id=>self.id,:item_id=>item[:item_id],:quantity=>item[:quantity],:unit_price=>item[:unit_price]})
    end
  end

  def total_sum
    sum = 0.0
    order_details.each do |detail|
      sum = sum + detail.quantity * detail.unit_price
    end
    return sum
  end
end
