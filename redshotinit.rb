require "fileutils"

p Dir.glob("vendor/ruby/2.7.0/bundler/gems/*")

["_config.yml", "index.md", "404.md"].each{|filename|
  path = "vendor/ruby/2.7.0/bundler/gems/redshot-*/" + filename
  FileUtils.cp(Dir.glob(path)[0], filename)
}

posts = "_posts"
FileUtils.mkdir_p("#{posts}") unless File.exists?("#{posts}")

# .gitignore
=begin
docs/_site
docs/.jekyll-cache
docs/vendor/ruby/2.7.0/bin
docs/vendor/ruby/2.7.0/build_info
docs/vendor/ruby/2.7.0/cache
docs/vendor/ruby/2.7.0/doc
docs/vendor/ruby/2.7.0/extensions
docs/vendor/ruby/2.7.0/gems
docs/vendor/ruby/2.7.0/specifications
=end

# .gitmodules
=begin
[submodule "docs/vendor/ruby/2.7.0/bundler/gems/redshot-f28e5c796238"]
  path = docs/vendor/ruby/2.7.0/bundler/gems/redshot-f28e5c796238
  url = https://github.com/justgetwet/redshot.git
  branch = main
=end