class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :tel
      t.string :fax
      t.string :cellphone
      t.text :remark

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
