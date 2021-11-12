class UsersController < ApplicationController

  def index
    
    @list_of_users = User.all.order({username: :asc})
    render({:template => "/user_views/index.html.erb"})
  end
  
  def add_user
    a = params.fetch("input_username")
    b = User.new
    b.username = a
    b.save
    render({:template =>"/user_views/detail.html.erb"})
  end

  #31:01 in video
  def detail
    a = params.fetch("username")
    b = User.where({:username => a}) 
    @user = b.at(0)
    
    # if @user == nil
    #   redirect_to("/404")
    # else
    #   render({ :template => "user_templates/show.html.erb"})
    # end

    render({:template => "/user_views/detail.html.erb"})
  end
end
