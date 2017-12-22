class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :profile_image, :statement, :artwork
end
