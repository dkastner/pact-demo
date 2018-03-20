require 'spec_helper'

require 'json'

require 'microservice_client'

describe MicroserviceClient, :pact do

  describe '#loan' do

    it 'returns loan information' do
      microservice.
          given('an existing loan').
          upon_receiving('a request for a loan').
          with(
              method: :get,
              path: "/loans/12345"
          ).
          will_respond_with(
              status: 200,
              body: Pact.like(
                address: '123 Main St',
                amount_owed: 56_987
              )
          )

      client = MicroserviceClient.new PACT_PORT
      loan = client.loan 12345
      expect(loan).to eq(
        'address' =>  '123 Main St',
        'amount_owed' => 56_987
      )
    end

  end

end
