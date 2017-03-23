class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: {case_sensitive:false}
  validates :name, presence: true
  validates_presence_of :password, on: :create
  validates_confirmation_of :password, on: create
  
  def self.authenticate email,password
    User.find_by_email(email).try(:authenticate, password)
  end
  
end
