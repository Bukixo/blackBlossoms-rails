class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :statement, :image_src

  def image_src
  	object.image.url
  end
end
