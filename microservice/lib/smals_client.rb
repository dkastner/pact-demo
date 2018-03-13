require 'httparty'

class SmalsClient

  def initialize(port)
    @port = port
  end

  def loan(num)
    response = HTTParty.get "http://localhost:#{@port}/loans/#{num}.json"
    response.parsed_response
  end

end
