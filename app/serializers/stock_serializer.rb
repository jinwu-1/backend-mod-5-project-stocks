class StockSerializer < ActiveModel::Serializer
  attributes :id, :symbol, :name, :price, :exchange
  belongs_to :portfolio
end
