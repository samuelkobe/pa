Pa::Application.routes.draw do
  get "home/index"
  match '/social/' => 'home#social', as: 'social_home'
  match '/team/' => 'home#team', as: 'team_home'
  match '/retail/' => 'home#retail', as: 'retail_home'
  match 'contact' => 'home#contact', as: 'contact_home'

  constraints :subdomain => 'store' do
      mount Spree::Core::Engine, :at => '/'
  end
  
  root :to => 'home#index'

end
