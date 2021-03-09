class PictureSerializer < ActiveModel::Serializer
  attributes :id, :image_url, :title, :artist, :date, :description
  has_many :comments
end
