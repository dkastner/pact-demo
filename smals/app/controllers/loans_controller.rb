class LoansController < ApplicationController

  def show
    amount = params[:id].to_i * 100_000
    payments = rand(amount)
    unpaid_balance = amount - payments

    render json: {
      loan_number: params[:id],
      original_amount: amount,
      unpaid_balance: unpaid_balance
    }
  end

end
