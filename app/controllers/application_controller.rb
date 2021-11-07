class ApplicationController < ActionController::Base

  def index
    render({:template => "/user_views/index.erb.html"})
    end
end
