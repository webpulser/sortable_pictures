namespace :sortable_pictures do 
 desc 'update pictures from modified or added thumbnails formats'
 task :update_thumbnails => :environment do
   Picture.find_all_by_parent_id(nil).each do |picture|
    puts "Fixing #{picture.filename}" 
    temp_file = picture.create_temp_file

    picture.attachment_options[:thumbnails].each { |suffix, size|
      picture.create_or_update_thumbnail(temp_file, suffix, *size)
      puts "  #{suffix}" 
    }
    sleep 2
   end
 end 
end
