Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :patients, :only => [:new, :create] do
    collection do
      get 'home', :to => "patients/home"
    end
  end


  resources :doctors, :only => [:new, :create] do
    collection do
      get 'home', :to => "doctors/home"
      get 'create_referral', :to => "doctors/create_referral"
      get 'incoming_requests', :to => "doctors/incoming_requests"
      get 'account_settings', :to => "doctors/account_settings"
    end
  end

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  # resources :referrals do
  #   resources :doctors
  # end

end
