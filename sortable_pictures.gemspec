Gem::Specification.new do |s|
  s.name     = "sortable_pictures"
  s.version  = "0.0.1"
  s.date     = "2009-05-07"
  s.summary  = "Polymorphic and sortables pictures Rails plugin"
  s.email    = "cyril.lepagnot@webpulser.com"
  s.homepage = "http://github.com/qtousart/sortable_pictures"
  s.description = "Polymorphic and sortables pictures Rails plugin"
  s.has_rdoc = true
  s.authors  = ["Cyril LEPAGNOT"] 
  s.files    = ["LICENSE", 
		"README",
		"sortable_pictures.gemspec", 
                "init.rb",
		"lib/sortable_pictures.rb", 
		"lib/picture.rb",
                "lib/sortable_picture.rb",
                "lib/tasks/update_thumbnails.rake"]
  s.rdoc_options = ["--main", "README"]
end
