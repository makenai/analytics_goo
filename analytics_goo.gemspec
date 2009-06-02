# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{analytics_goo}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Rob Christie"]
  s.date = %q{2009-06-02}
  s.email = %q{robchristie@gmail.com}
  s.extra_rdoc_files = [
    "README.textile"
  ]
  s.files = [
    "CHANGELOG",
     "ChangeLog",
     "MIT-LICENSE",
     "README.textile",
     "Rakefile",
     "TODO",
     "VERSION",
     "analytics_goo.gemspec",
     "autotest/CHANGELOG",
     "autotest/LICENSE",
     "autotest/README.rdoc",
     "autotest/discover.rb",
     "autotest/railsplugin.rb",
     "autotest/railsplugin_rspec.rb",
     "lib/analytics_goo.rb",
     "lib/analytics_goo/google_analytics_adapter.rb",
     "rails/init.rb",
     "rails/init.rb",
     "tasks/analytics_goo.rake",
     "test/analytics_goo_test.rb",
     "test/test_helper.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/eyestreet/analytics_goo}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{TODO}
  s.test_files = [
    "test/analytics_goo_test.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end