class User < ApplicationRecord
    has_many :stocks

    validates :username, uniqueness: { case_sensitive: false }

    validates :username, length: { minimum: 4 }
    # validates :password, length: { minimum: 3 }
    validate :minimum_cash
    
    has_secure_password

    def minimum_cash
        user_cash = self.cash.to_f.round(2)
        if user_cash < 0
            errors.add(:cash, "not enough money")
        end
    end

end
