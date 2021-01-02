require "grpc"
require "yaml"
require "erb"
require "active_record"
require "logger"
require "zeitwerk"
require "dotenv/load"
require "google/cloud/firestore"
require "pg"
require "./app"

loader = Zeitwerk::Loader.new
loader.push_dir("#{Dir.pwd}/app/controllers")
loader.push_dir("#{Dir.pwd}/app/models")
loader.push_dir("#{Dir.pwd}/app/services")
loader.do_not_eager_load("#{Dir.pwd}/app/services")
loader.collapse("#{__dir__}/app/services")
loader.setup

db_conf = YAML.safe_load(ERB.new(File.read("./config/database.yml")).result, aliases: true)
ActiveRecord::Base.establish_connection(db_conf)

loader.eager_load
