class Portfolio < ApplicationRecord
  has_many :stocks
  belongs_to :user
  validates_presence_of :description, :user_id

  def username
    self.user.username
  end

end
