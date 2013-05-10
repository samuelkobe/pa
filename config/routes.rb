Pa::Application.routes.draw do
  get "home/index"
  
  constraints :subdomain => 'store' do
      mount Spree::Core::Engine, :at => '/'
  end
  
  root :to => 'home#index'
end
