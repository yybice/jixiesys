class Employee < ActiveRecord::Base
  validates :id_num,:uniqueness => true
  validates :nick_name,:uniqueness => true
  class << self
    def auth(nick_name,password)
      where(:nick_name => nick_name,:password => password).first
    end
  end
end
