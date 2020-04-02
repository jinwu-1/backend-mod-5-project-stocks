class StockSerializer < ActiveModel::Serializer
  attributes :id, :symbol, :name, :price, :exchange
end
