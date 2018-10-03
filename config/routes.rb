Rails.application.routes.draw do
  get 'stores/index/' => 'stores#index', as: 'storesindex'
  get 'stores/show/' => 'stores#show', as: 'storesshow'
  get 'stores/new/' => 'stores#new', as: 'storesnew'
  post 'stores/create/' => 'stores#create', as: 'storescreate'
  get 'stores/edit/' => 'stores#edit', as: 'storesedit'
  patch 'stores/update/' => 'stores#update', as: 'storesupdate'
  delete 'stores/destroy/' => 'stores#destroy', as: 'storesdestroy'


	get 'shoppingnew/index' => 'shoppingnew#index', as: 'shoppingindex'
	get 'shoppingnew/show/:id' => 'shoppingnew#show', as: 'shoppingshow'
  get 'shoppingnew/new' => 'shoppingnew#new', as: 'shoppingnew'
  post 'shoppingnew/create' => 'shoppingnew#create', as: 'shoppingcreate'
  get 'shoppingnew/edit/:id' => 'shoppingnew#edit', as: 'shoppingedit'
  patch 'shoppingnew/update/:id' => 'shoppingnew#update', as: 'shoppingupdate'
  delete 'shoppingnew/destroy/:id' => 'shoppingnew#destroy', as: 'shoppingdestroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
