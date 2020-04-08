class User < ApplicationRecord
    has_many :stocks

    validates :username, uniqueness: { case_sensitive: false}
    validates :username, length: { minimum: 4 }
    # validates :password, length: { minimum: 3 }
    
    has_secure_password
end
