require "grpc"
require "yaml"
require "active_record"
require "logger"

$LOAD_PATH << "#{Dir.pwd}/app/services"

Dir[File.expand_path "app/*.rb"].each do |file|
  require file
end
