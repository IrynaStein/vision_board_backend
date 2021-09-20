class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :boards

  has_many :boards
end
