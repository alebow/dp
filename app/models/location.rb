class Location < ActiveRecord::Base
  attr_accessible :address, :address_2, :city, :company_id, :country, :country_code, :headquarters, :phone_number, :state, :zip_code
  belongs_to :company
  
end
