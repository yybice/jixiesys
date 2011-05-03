class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers,:options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.string :full_name
      t.string :short_name
      t.string :tel
      t.string :fax
      t.string :contact
      t.string :cellphone

      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
