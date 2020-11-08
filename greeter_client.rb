require "./app"

def main
  user = !ARGV.empty? ? ARGV[0] : "world"
  hostname = ARGV.size > 1 ? ARGV[1] : "localhost:50051"
  stub = Souls::Blog::Stub.new(hostname, :this_channel_is_insecure)
  begin
    message = stub.say_hello(Souls::HelloRequest.new(name: user)).message
    p "Method1: #{message}"
    message = stub.say_hello_again(Souls::HelloRequest.new(name: user)).message
    p "Method2: #{message}"
  rescue GRPC::BadStatus => e
    abort "ERROR: #{e.message}"
  end
end

main
