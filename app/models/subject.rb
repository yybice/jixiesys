class Subject < ActiveRecord::Base
  validates :name,:uniqueness=>true
  has_many :items
end
