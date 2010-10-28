# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{acts_as_likable}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["kitop"]
  s.date = %q{2010-10-28}
  s.description = %q{Provides a simple way to add liking functionality to your application.}
  s.email = %q{}
  s.extra_rdoc_files = ["README.md"]
  s.homepage = %q{http://github.com/edgarjs/ajaxful-rating}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Ajaxful_rating", "--main", "README.textile"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{acts_as_likable}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Provides a simple way to add liking functionality to your application.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
