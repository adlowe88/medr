Rails.application.routes.draw do
  root :to => 'pages#home'

  #typeahead
  get 'things/typeahead/:query' => 'things#typeahead'

#if someone makes a get request from patient/referrals#forpatient

  resources :patients do
    collection do
      # get 'home', :to => "patients/home"
      get 'check_referral', :to => "patients/check_referral"
      get 'pending_requests', :to => "patients/pending_requests"
      get 'account_settings', :to => "patients/account_settings"
      get 'show_referral', :to => "patients/show_referralrout"
    end
  end


  resources :doctors do
    collection do
      # get 'home', :to => "doctors/home"
      # get 'show', :to => "doctors/home"
      get 'create_referral', :to => "doctors/create_referral"
      get 'pending_requests', :to => "doctors/pending_requests"
      get 'account_settings', :to => "doctors/account_settings"
    end
    resources :referrals
  end

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
