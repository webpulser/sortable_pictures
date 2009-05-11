# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{sortable_pictures}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Cyril LEPAGNOT"]
  s.date = %q{2009-05-11}
  s.description = %q{With sortables pictures Rails plugin you can have pictures with tags, comments and ordering.}
  s.email = %q{cyril.lepagnot@webpulser.com}
  s.files    = ["LICENSE", 
    "README",
    "sortable_pictures.gemspec", 
    "init.rb",
    "lib/sortable_pictures.rb", 
    "lib/picture.rb",
    "lib/sortable_picture.rb",
    "lib/tasks/update_thumbnails.rake"]
  s.has_rdoc = true
  s.homepage = "http://github.com/qtousart/sortable_pictures"
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.rubyforge_project = %q{sortable_pictures}
  s.summary = %q{Polymorphic and sortables pictures Rails plugin.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mime-types>, [">= 1.15"])
      s.add_runtime_dependency(%q<mbleigh-acts-as-taggable-on>, [">= 1.0.5"])
      s.add_runtime_dependency(%q<jimiray-acts_as_commentable>, [">= 1.0.0"])
    else
      s.add_dependency(%q<mime-types>, [">= 1.15"])
      s.add_dependency(%q<mbleigh-acts-as-taggable-on>, [">= 1.0.5"])
      s.add_dependency(%q<jimiray-acts_as_commentable>, [">= 1.0.0"])
    end
  else
    s.add_dependency(%q<mime-types>, [">= 1.15"])
    s.add_dependency(%q<mbleigh-acts-as-taggable-on>, [">= 1.0.5"])
    s.add_dependency(%q<jimiray-acts_as_commentable>, [">= 1.0.0"])
  end
end
