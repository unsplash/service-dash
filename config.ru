require "config_env"

ConfigEnv.path_to_config("#{__dir__}/config/config_env.rb")


map "/" do
  use Rack::Auth::Basic, "Protected Area" do |username, password|
    username == ENV["USERNAME"] && password == ENV["PASSWORD"]
  end
end