class Portfolio < ApplicationRecord
  has_many :stocks
  belongs_to :user
  validates_presence_of :description, :user_id
end
