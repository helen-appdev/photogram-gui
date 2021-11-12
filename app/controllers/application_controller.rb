class ApplicationController < ActionController::Base

  def index
    render({:template => "/user_views/index.html.erb"})
    end
end
