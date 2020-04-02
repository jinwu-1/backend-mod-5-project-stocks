class UserSerializer < ActiveModel::Serializer
  attributes :username, :first_name, :last_name, :cash
  has_many :portfolios
end
