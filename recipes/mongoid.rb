gem 'bson_ext'
gem 'mongoid', git: 'https://github.com/mongoid/mongoid.git'

after_bundler do
  generate 'mongoid:config'
end

inject_into_file "config/initializers/generators.rb", :after => "Rails.application.config.generators do |g|\n" do <<-RUBY
      g.orm = :mongoid\n
      g.test_framework = :rspec\n
RUBY
end

__END__

name: Mongoid
description: "Utilize MongoDB with Mongoid as the ORM."
author: mbleigh

category: persistence
exclusive: orm
tags: [orm, mongodb]

args: ["-O"]

