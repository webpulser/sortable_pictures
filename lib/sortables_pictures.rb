#SortablesPictures
module Webpulser
  module SortablesPictures #:nodoc:

    def self.included(base)
      base.extend ClassMethods  
    end

    module ClassMethods
      def sortables_pictures
        has_many :sortable_pictures, :dependent => :destroy, :order => 'position', :as => :picturable
        has_many :pictures, :through => :sortable_pictures, :readonly => true, :order => 'sortable_pictures.position'
      end
    end
  
  end
end

ActiveRecord::Base.send(:include, Webpulser::SortablesPictures)
