source 'https://rubygems.org'

# Specify your gem's dependencies in gates_of_heaven.gemspec
gemspec

version = ENV["RAILS_VERSION"] || "3.2.13"

rails = case version
when "master"
  {github: "rails/rails"}
else
  "~> #{version}.0"
end

gem "rails", rails
