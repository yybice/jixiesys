class Item < ActiveRecord::Base
  validates_uniqueness_of :model,:scope=>[:supplier_id,:subject_id]
  validates :subject_id,:presence=>true
  validates :supplier_id,:presence=>true
  belongs_to :subject

  def eql?(item)
    (this.id && this.id == item.id) ? true : false
  end
end
