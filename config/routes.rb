Rails.application.routes.draw do
get("/", { :controller => "application" , :action => "index"})
get("/users", { :controller => "users" , :action => "index"})
get("/users/:username", {:controller => "users", :action=> "detail"})
end
