require 'rspec/mocks'

require 'smals_client'

Pact.provider_states_for 'frontend' do

  provider_state 'an existing loan' do
    set_up do
      client = double(:client, loan: {
        'loan_number' => '12394',
        'original_amount' => 393_993,
        'unpaid_balance' => 56_000
      })
      allow(SmalsClient).to receive(:new).and_return client
    end
  end

end
