require 'httparty'

class MicroserviceClient

  def initialize(port)
    @port = port
  end

  def loan(num)
    response = HTTParty.get "http://localhost:#{@port}/..."
    response.parsed_response
  end

end
