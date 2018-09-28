Rails.application.routes.draw do
	get 'shoppingnew/index' => 'shoppingnew#index', as: 'shoppingindex'
	get 'shoppingnew/show/:id' => 'shoppingnew#show', as: 'shoppingshow'
  get 'shoppingnew/new' => 'shoppingnew#new', as: 'shoppingnew'
  post 'shoppingnew/create' => 'shoppingnew#create', as: 'shoppingcreate'
  get 'shoppingnew/edit/:id' => 'shoppingnew#edit', as: 'shoppingedit'
  patch 'shoppingnew/update/:id' => 'shoppingnew#update', as: 'shoppingupdate'
  delete 'shoppingnew/destroy/:id' => 'shoppingnew#destroy', as: 'shoppingdestroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
