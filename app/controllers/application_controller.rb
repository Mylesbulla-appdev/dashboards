class ApplicationController < ActionController::Base
    layout('wrapper.html.erb')


  def load_homepage
    render( :template => 'index.html.erb')
  end
end
