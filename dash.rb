require "./service"

get "/" do
  @services = JSON.parse(ENV["SERVICES"]).map do |service|
    Service.new(service["name"], service["url"], service["text"])
  end
  erb :index
end