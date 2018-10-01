class StoresController < ApplicationController
  def index
    @stores = Store.all
  end

  def show
    @stores = Store.find_by(id:params['id'])
  end

  def new
    @stores= Store.new
  end

  def create
    stores = Store.new(permit)
    if  stores.save
      @msg = 'Salvo com sucesso'
    else
      @msg = stores.errors.messages
  end
  end

  def edit
    @stores = Store.find_by(id:params['id'])
  end

  def update
    stores = Store.find_by(id: params['id'])
    if stores.update_attributes(permit)
      @msg = 'Salvo com sucesso'
    else
      @msg = stores.errors.messages
    end
  end

  def destroy
    stores = Store.find_by(id: params['id'])
    if stores.destroy
      @msg = 'Apagado com sucesso'
    else
      @msg = stores.errors.messages
    end   
  end

private

  def permit
    params[ 'store']. permit(:name, :floor, :idshopping)
  end
end
