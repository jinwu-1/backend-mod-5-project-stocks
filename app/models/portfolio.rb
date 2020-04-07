class Portfolio < ApplicationRecord
  has_many :stocks
  belongs_to :user
  validates_presence_of :user_id, :name
end
