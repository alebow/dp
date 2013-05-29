class Company < ActiveRecord::Base
  attr_accessible :name, :short_description, :website
  has_many :locations
  has_many :searches

  accepts_nested_attributes_for :locations
  accepts_nested_attributes_for :searches

end
