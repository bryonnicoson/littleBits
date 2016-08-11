require 'HTTParty'
require 'bundler'
Bundler.require()

headers = {
	"Authorization" => "Bearer [INSERT API KEY HERE]",
	"Accept" => "application/vnd.littlebits.v2+json",
	"Content-Type" => "application/json"
}

1.upto(5) do
	HTTParty.post("https://api-http.littlebitscloud.cc/devices/00e04c1f0376/output",
		:headers => headers 
	)
	sleep 10
end
