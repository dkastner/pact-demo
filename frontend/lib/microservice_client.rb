require 'httparty'

require 'json'

class MicroserviceClient

  def initialize(port)
    @port = port
  end

  def loan(num)
    response = HTTParty.get "http://localhost:#{@port}/loans/#{num}"
    JSON.parse response.body
  end

end
