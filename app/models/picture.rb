class Picture < ActiveRecord::Base

  acts_as_commentable
  has_attachment :storage => :file_system, :file_system_path => 'public/images/sortable_pictures',
    :content_type => 'image', :thumbnails => { 
    :big => '500x500', 
    :normal => '200x200', 
    :small => '100x100', 
    :thumb => '50x50'
  }

  validates_presence_of :content_type

  has_many :sortable_pictures, :dependent => :destroy
end
