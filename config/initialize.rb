require "yaml"
require "erb"

db_conf = YAML.safe_load(ERB.new(File.read("./config/database.yml")).result)
ActiveRecord::Base.establish_connection(db_conf)
