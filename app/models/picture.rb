class Picture < ActiveRecord::Base

  acts_as_commentable
  has_attachment(SortablePictures::options)
  validates_presence_of :content_type

  has_many :sortable_pictures, :dependent => :destroy
end
