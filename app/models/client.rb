class Client < ActiveRecord::Base
  attr_accessor :city
  attr_accessor :state
  
  before_save { self.email = email.downcase }
  validates :fname, presence: true, length: {maximum: 25}
  validates :lname, presence: true, length: {maximum: 25}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates_uniqueness_of :email, presence: true, length: {maximum: 255},
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

  validates_confirmation_of :password
     
end
