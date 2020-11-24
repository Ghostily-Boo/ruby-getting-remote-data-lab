# Write your code here
require 'open-uri'
require 'pry'
require 'json'

class GetRequester

    def initialize(url)
        @url = url
    end

    def get_response_body
        URI.parse(@url).open.string
    end

    def parse_json
        JSON.load(open(@url))
    end
end