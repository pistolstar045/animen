class Admin::CustomersController < ApplicationController
  def show
   @customer = Customer.find(params[:id])
   @animes = @customer.animes
  end
  
  def index
   @customers = Customer.all
  end

end





