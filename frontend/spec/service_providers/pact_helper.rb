require 'pact/consumer/rspec'

PACT_PORT = 8875

Pact.configure do | config |
  config.pact_dir = File.expand_path('../../pacts', __FILE__)
end

Pact.service_consumer "frontend" do
  has_pact_with "microservice" do
    mock_service :microservice do
      port PACT_PORT
    end
  end
end
