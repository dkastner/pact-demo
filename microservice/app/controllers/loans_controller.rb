require 'faker'
require 'smals_client'

class LoansController < ApplicationController

  def show

    params[:id]  # GET /loans/2393

    address = Faker::Address.street_address
    client = SmalsClient.new 5000
    loan_information = client.loan params[:id]

    render json: {
      address: address,
      amount_owed: loan_information['unpaid_balance']
    }
  end

end
