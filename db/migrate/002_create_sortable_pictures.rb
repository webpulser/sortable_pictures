class CreateSortablePictures < ActiveRecord::Migration
  def self.up
    create_table :sortable_pictures do |t|
      t.belongs_to :picture, :object
      t.string :object_type
      t.integer :position
    end
  end

  def self.down
    drop_table :sortable_pictures
  end
end
