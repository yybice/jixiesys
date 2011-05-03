class Customer < ActiveRecord::Base
  validates_uniqueness_of :full_name
  validates :full_name,:uniqueness=>true

  has_many :people
end
