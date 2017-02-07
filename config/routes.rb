Rails.application.routes.draw do
  resources :progs
  resources :pcs
  root 'pcs#index'
end
