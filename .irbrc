require "yaml"
require "active_record"
require "erb"

db_conf = YAML.safe_load(ERB.new(File.read("./config/database.yml")).result)
ActiveRecord::Base.establish_connection(db_conf)

Dir[File.expand_path "./app/models/*.rb"].sort.each do |file|
  require file
end

