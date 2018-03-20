require 'pact/provider/rspec'

Dir[File.expand_path('../provider_states/**/*.rb', __FILE__)].each do |f|
  require f
end

Pact.configure do | config |
  config.pact_dir = File.expand_path('../../pacts', __FILE__)
end

Pact.service_provider "microservice" do
	honours_pact_with 'frontend' do
    pact_uri File.expand_path('../../../../pacts/frontend-microservice.json', __FILE__)
	end
end
