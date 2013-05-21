Pa::Application.routes.draw do
  get "home/index"
  match 'splash' => 'home#splash'
  
  constraints :subdomain => 'store' do
      mount Spree::Core::Engine, :at => '/'
  end
  
  root :to => 'home#index'
end
