Rails.application.routes.draw do
get("/", { :controller => "users" , :action => "index"})
get("/users", { :controller => "users" , :action => "index"})
get("/users/:username", {:controller => "users", :action=> "detail"})
get("/photos", { :controller => "photos" , :action => "index"})
get("/photos/:photoid", { :controller => "photos" , :action => "detail"})

end
