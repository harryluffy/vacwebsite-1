class User < ApplicationRecord
    
    before_save { self.email = email.downcase } #ensures email is downcased in database index
    
    validates :first_name,  presence: true, length: { maximum: 50 }
    validates :last_name,  presence: true, length: { maximum: 50 }
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
                      format: { with: VALID_EMAIL_REGEX },
                      uniqueness: { case_sensitive: false }
                      
    has_secure_password
    
    validates :password, presence: true, length: { minimum: 8 }
    validates :password, presence: true, length: { maximum: 255 }
end