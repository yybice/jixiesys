class CreateOrderDetails < ActiveRecord::Migration
  def self.up
    create_table :order_details,:options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.integer :order_id
      t.integer :subject_id
      t.string :model
      t.integer :quantity
      t.float :price

      t.timestamps
    end
  end

  def self.down
    drop_table :order_details
  end
end
