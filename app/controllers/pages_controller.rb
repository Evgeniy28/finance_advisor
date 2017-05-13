class PagesController < ApplicationController
  def index
    @customer = Customer.new
  end
end
