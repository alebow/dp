class Associate < ActiveRecord::Base
  attr_accessible :admin, :bio, :email, :group_id, :name, :password, :password_confirmation
  has_secure_password
  belongs_to :group
  has_many :searches

  before_save { |associate| associate.email = email.downcase }

  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  
end
