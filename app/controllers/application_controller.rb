class ApplicationController < ActionController::Base



  def dashboard_options
    render( :template => '/d_templates/dashboard_home.html.erb')
  end
end
