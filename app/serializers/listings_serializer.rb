class ListingsSerializer < ActiveModel::Serializer
  attributes :id, :description, :year_built, :square_feet, :bedrooms, :bathrooms, :availability, :address, :price
end
