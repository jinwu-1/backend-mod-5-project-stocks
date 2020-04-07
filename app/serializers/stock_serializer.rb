class StockSerializer < ActiveModel::Serializer
  attributes :id, :symbol, :name, :price, :exchange
  has_one :user
end
