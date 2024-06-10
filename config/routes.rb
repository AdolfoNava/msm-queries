Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  
  get("/directors/youngest", {:controller => "trivia", :action => "youngest"})
  get("/directors/eldest", {:controller => "trivia", :action => "oldest"})

  get("/directors", {:controller => "directors", :action => "list"})
  get("/directors/:the_id", {:controller => "directors", :action => "display"})

  get("/movies", {:controller => "movies", :action => "list"})
  get("/movies/:the_id", {:controller => "movies", :action => "display"})
  get("/actors", {:controller => "actors", :action => "list"})
  get("/actors/:the_id", {:controller => "actors", :action => "display"})
end
