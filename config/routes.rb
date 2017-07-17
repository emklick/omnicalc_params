Rails.application.routes.draw do
  
  get("/flexible/square/:a_number", { :controller => "calculations", :action => "flex_square" })
  
  get("/flexible/square_root/:a_number", { :controller => "calculations", :action => "flex_square_root" })
  
  get("/square/new", { :controller => "calculations", :action => "square_form" })
  
  get("/square/results", { :controller => "calculations", :action => "process_square" })
   
  get("/payment/interest_rate/years/present_value", { :controller => "calculations", :action => "payment_form" })
  
  get("/random/results", { :controller => "calculations", :action => "random_form" })
  
  get("/word_count/results", { :controller => "calculations", :action => "process_wordcount" })
  
  get("/descriptive_stats/results", { :controller => "calculations", :action => "process_stats" })
  
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end
