require "grpc"
require "yaml"
require "erb"
require "logger"
require "zeitwerk"
require "dotenv/load"
require "google/cloud/firestore"
require "./app"

loader = Zeitwerk::Loader.new
loader.push_dir("#{Dir.pwd}/app/controllers")
loader.push_dir("#{Dir.pwd}/app/services")
loader.do_not_eager_load("#{Dir.pwd}/app/services")
loader.collapse("#{__dir__}/app/services")
loader.setup

loader.eager_load
