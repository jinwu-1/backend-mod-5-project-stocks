class PortfolioSerializer < ActiveModel::Serializer
  attributes :id, :description
  has_many :stocks
  belongs_to :user
end
