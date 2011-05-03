class Supplier < ActiveRecord::Base
  validates :full_name,:uniqueness=>true
end
