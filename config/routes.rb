Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get("/", { :controller => 'application', :action => 'dashboard_options'})
  get('/forex', { :controller => 'currencies', :action => 'first_currency'})
  get('/forex/:symbol', { :controller => 'currencies', :action => 'second_currency'})
  get('forex/:symbol/:symbol_2', { :controller => 'currencies', :action => 'third_currency'})

end
