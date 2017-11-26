Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :patients, :only => [:new, :create] do
    collection do
      get 'home', :to => "patients/home"
      get 'check_referral', :to => "patients/check_referral"
      get 'pending_requests', :to => "patients/pending_requests"
      get 'account_settings', :to => "patients/account_settings"
    end
  end


  resources :doctors, :only => [:new, :create] do
    collection do
      get 'home', :to => "doctors/home"
      get 'create_referral', :to => "doctors/create_referral"
      get 'pending_requests', :to => "doctors/pending_requests"
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
