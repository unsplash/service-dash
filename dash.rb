require "./service"

get "/" do
  @services = [
    Service.new("Heroku",     "https://status.heroku.com/api/v3/current-status", '"Production":"green"'),
    Service.new("Redis",      "https://status.redislabs.com",  "All Systems Operational"),
    Service.new("Memcachier", "http://status.memcachier.com", "All systems go!"),
    Service.new("Bonsai",     "https://status.bonsai.io",      "All Systems Operational"),    
    Service.new("Keen.io",    "http://status.keen.io",        "All Systems Operational")
  ]
  erb :index
end