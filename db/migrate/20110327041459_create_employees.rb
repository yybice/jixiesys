class CreateEmployees < ActiveRecord::Migration
  def self.up
    create_table :employees,:options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.string :name
      t.string :phone
      t.string :id_num

      t.timestamps
    end
  end

  def self.down
    drop_table :employees
  end
end
