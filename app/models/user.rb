class User < ApplicationRecord
    #Validation/bcrypt stuff
    has_secure_password
    validates :username, presence: true
    validates :username, uniqueness: true
    validates :username, length: { minimum: 4 }
    validates :password, length: { minimum: 8 }
    validates :password, presence: true
    validates :email, presence: true
    validates :email, uniqueness: true 


    #Join table stuff
    has_many :mentees
end
