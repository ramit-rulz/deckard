class Artwork < ActiveRecord::Base
 
  belongs_to :collection
  validates :title, :presence => true
  validates :image, :presence => true
end
