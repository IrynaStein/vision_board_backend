class QuoteSerializer < ActiveModel::Serializer
  attributes :id, :paragraph, :category

  has_many :boards
end
