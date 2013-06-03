class Search < ActiveRecord::Base
  attr_accessible :associate_id, :comp_base, :comp_bonus, :company_id, :confidential, :exec_function, :exec_level, :fee, :hired_from, :notes, :open, :person_hired, :position, :full_title
  belongs_to :company
  belongs_to :associate
  has_many :locations, :through => :company

  validates_presence_of :company
  
end
