class CustomersController < ApplicationController

  def create
    customer = Customer.new(customer_params)

    if customer.save
      render json: { message: 'Ждите звонка' }, status: :created
    else
      render json: customer.errors, status: :unprocessable_entity
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :phone)
  end
end