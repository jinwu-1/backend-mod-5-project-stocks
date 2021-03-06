class User < ApplicationRecord
    has_one :portfolio

    validates :username, uniqueness: { case_sensitive: false}
    validates :username, length: { minimum: 4 }
    validates :password, length: { minimum: 4 }
    
    has_secure_password
end
