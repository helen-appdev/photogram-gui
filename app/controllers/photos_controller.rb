class PhotosController < ApplicationController

  def index
    @photos = Photo.all.order({:created_at => :desc })
    render({:template => "photo_views/index.html.erb"})
  end


  def detail
    a = params.fetch("photoid")
    @photo = Photo.where({:id => a}).at(0)
    
    render({:template => "photo_views/detail.html.erb"})
  end
end