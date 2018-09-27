class ShoppingnewController < ApplicationController

	def index
		@shops = Shop.all
	end

	def show
		@shop = Shop.find_by(id:params['id'])
	end

  def new
  	@shop= Shop.new
  end

  def create
  	shop = Shop.new(permit)
  	if  shop.save
  		@msg = 'Salvo com sucesso'
  	else
  		@msg = shop.errors.messages
	end
  end

  def edit
  	@shop = Shop.find_by(id:params['id'])
  end

  def update
  end

  def destroy
  end

private

  def permit
  	params[ 'shop']. permit(:name, :address)
  end
end
