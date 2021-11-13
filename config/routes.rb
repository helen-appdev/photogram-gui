Rails.application.routes.draw do
get("/", { :controller => "users" , :action => "index"})

get("/users", { :controller => "users" , :action => "index"})
get("/users/:username", {:controller => "users", :action=> "detail"})
get("/update_user/:username", {:controller => "users", :action=> "update"})
get("add_user", {:controller => "users", :action => "add_user"})

get("/photos", { :controller => "photos" , :action => "index"})
get("/photos/:photoid", { :controller => "photos" , :action => "detail"})
get("/delete_photo/:photoid", {:controller => "photos", :action => "delete"})
get("/insert_photo_record", {:controller => "photos", :action => "insert"})
get("/update_photo/:photoid", {:controller => "photos", :action => "update"})

get("/insert_comment_record/", {:controller => "photos", :action => "comment"})
end
