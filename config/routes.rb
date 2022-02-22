Rails.application.routes.draw do
root to: "restaurantes#index"
  resources :restaurantes, only:[:show, :edit, :update] do
  resources :empleado, only:[:new, :create, :destroy, :edit, :update, :index]
  resources :platillo
  resources :pedidos
  end
end
