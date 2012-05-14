class Collection < ActiveRecord::Base
  has_many :artworks, :dependent => :destroy
    validates :name, :presence => true
end
