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

  def delete
    the_id = params.fetch("photoid")
    matching_photo = Photo.where({:id => the_id})
    the_photo = matching_photo.at(0)
    the_photo.destroy

    redirect_to("/photos")
  end

  def insert
    #Parameters: {"inputurl"=>"http://3.bp.blogspot.com/-UXhI6bPgGQ4/UpFrgHjhriI/AAAAAAAAWS8/Do-VZZwv7HM/s1600/bernese+mountain+dog+.jpg", "inputcaption"=>"dsfsa", "inputowner"=>"117"}
    input_image = params.fetch("inputurl")
    input_caption = params.fetch("inputcaption")
    input_owner_id = params.fetch("inputowner")

    new_photo = Photo.new
    new_photo.image = input_image
    new_photo.caption = input_caption
    new_photo.owner_id = input_owner_id
    
    new_photo.save
    redirect_to("/photos/#{new_photo.id}")
  end
  
  def update
    
    photoid = params.fetch("photoid")
    the_photo = Photo.where({:id => photoid})
    photo = the_photo.at(0)

    caption = params.fetch("input_caption")
    image = params.fetch("input_image")
    
    
    
    photo.image = image
    photo.caption = caption
    photo.save
    # render({:template => "photo_views/test.html.erb"})

    redirect_to("/photos/#{photoid}")

  end

end