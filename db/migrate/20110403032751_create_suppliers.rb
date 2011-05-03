class CreateSuppliers < ActiveRecord::Migration
  def self.up
    create_table :suppliers do |t|
      t.string :company_name
      t.string :contact
      t.string :cellphone
      t.string :tel
      t.string :fax
      t.text :remark

      t.timestamps
    end
  end

  def self.down
    drop_table :suppliers
  end
end
