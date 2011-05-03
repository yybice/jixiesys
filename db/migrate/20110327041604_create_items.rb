class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items,:options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.integer :subject_id
      t.string :name
      t.string :model
      t.string :pic
      t.string :pic_num
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
