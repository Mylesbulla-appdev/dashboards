Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get("/", { :controller => 'application', :action => 'dashboard_options'})
  get('/fer', { :controller => 'currencies', :action => 'first_currency'})


end
