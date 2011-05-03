class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders,:options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.integer :customer_id
      t.boolean :include_invoice
      t.string :contact
      t.string :tel
      t.date :ordered_at
      t.date :deadline
      t.text :remark

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
