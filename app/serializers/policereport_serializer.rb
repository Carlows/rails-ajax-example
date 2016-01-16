class PolicereportSerializer < ActiveModel::Serializer
  attributes :id, :description, :city, :state, :phonenumber, :name
end
