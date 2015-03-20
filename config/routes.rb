match '/user_import/index', :to => 'user_import#index', :via => [:get, :post]
match '/user_import/match', :to => 'user_import#match', :via => [:get, :post]
match '/user_import/result', :to => 'user_import#result', :via => [:get, :post]
