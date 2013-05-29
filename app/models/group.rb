class Group < ActiveRecord::Base
  attr_accessible :name, :nickname
  has_many :associates
  has_many :searches, :through => :associates
  
end
