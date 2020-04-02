class PortfolioSerializer < ActiveModel::Serializer
  attributes :id, :description, :stocks_array
  belongs_to :user
end
