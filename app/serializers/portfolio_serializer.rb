class PortfolioSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :stocks
  belongs_to :user
end
