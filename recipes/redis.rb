gem "hiredis", "~> 0.4.0"
gem "redis", ">= 2.2.0", :require => ["redis", "redis/connection/hiredis"]


say_wizard "Generating Redis Configuration..."
create_file "config/redis.yml"

say_wizard "Generating Redis initializer..."
append_file "config/redis.yml" do <<-RUBY
default:
  host: localhost
  port: 6379
development:
  db: 0
test:
  db: 1
production:
  db: 2
  RUBY
end
initializer "redis.rb", <<-RUBY
redis_conf = YAML::load(File.read(Rails.root.join("config", "redis.yml")))[Rails.env]
REDIS = Redis.new(redis_conf)
RUBY

__END__

name: Redis
description: "Add Redis as a persistence engine to your application."
author: mbleigh

exclusive: key_value
category: persistence
tags: [key_value, cache, session_store]
