require 'HTTParty'
require 'bundler'
Bundler.require()

headers = {
	"Authorization" => "Bearer INSERT_YOUR_KEY_HERE",
	"Accept" => "application/vnd.littlebits.v2+json",
	"Content-Type" => "application/json"
}
body = {"percent" => 100, "duration_ms" => 2000}

1.upto(5) do
	HTTParty.post("https://api-http.littlebitscloud.cc/devices/INSERT_DEVICE_ID_HERE/output",
		:headers => headers,
		:body => body.to_json
	)
	sleep 5
end
