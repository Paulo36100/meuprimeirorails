class StoresController < ApplicationController
  def index
    @store = Store.all
  end

  def new
    @store= Store.new
  end

  def create
    store = Store.new(permit)
    if  store.save
      @msg = 'Salvo com sucesso'
    else
      @msg = shop.errors.messages
    end
  end

  def edit
@store = Store.find_by(id: params['id'])
  end

  def update
store = Store.find_by(id: params['id'])
    if store.update_attributes(permit)
      @msg = 'Salvo com sucesso'
    else
      @msg = shop.errors.messages
    end
  end

  def destroy
    store = Store.find_by(id: params['id'])
    if store.destroy
      @msg = 'Apagado com sucesso'
    else
      @msg = shop.errors.messages
    end   
  end

  private

  def permit
    params['store'].permit(:name, :floor, :idshopping)
  end
end