class PortfolioSerializer < ActiveModel::Serializer
  attributes :id, :description, :username
  has_many :stocks
  # belongs_to :user
end
