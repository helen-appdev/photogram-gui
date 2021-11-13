class UsersController < ApplicationController

  def index
    
    @list_of_users = User.all.order({username: :asc})
    render({:template => "/user_views/index.html.erb"})
  end
  

  def update
  a = params.fetch("username")
  puts a
  b = User.where({:username => a})
  c = b.at(0)
  
  d = params.fetch("inputusername")
  
  c.username = d
  c.save
  redirect_to("/users/#{c.username}")
  end
  
  def add_user
    a = params.fetch("input_username")
    b = User.new
    b.username = a
    b.save
    redirect_to("/users/#{b.username}")
  end


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
