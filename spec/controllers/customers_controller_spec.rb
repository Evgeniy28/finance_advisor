require 'rails_helper'

RSpec.describe CustomersController, type: :controller do

  describe 'POST #create' do
    context 'with valid attributes' do
      it 'saves the new customer' do
        expect { post :create, params: { customer: { name: 'Name', phone: '1234567' } } }.to change(Customer, :count).by(1)
      end
    end

    context 'witn invalid attributes' do
      it 'does not save the customer' do
        expect { post :create, params: { customer: { name: '', phone: '' } } }.to_not change(Customer, :count)
      end
    end
  end

end
