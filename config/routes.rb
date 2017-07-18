Rails.application.routes.draw do
  
  # get("/",        { :controller => "homepage", :action => "homepage" })
  
  
  
  get("/flexible/square/:a_number_flex", { :controller => "calculations", :action => "flex_square" })
  
  get("/flexible/square_root/:a_number_flex", { :controller => "calculations", :action => "flex_square_root"})
  
  get("/flexible/payment/:basis_points/:number_of_years/:present_value", {:controller => "calculations", :action => "flex_payment"})
  
  get("/flexible/random/:random_number_flex", {:controller => "calculations", :action => "flex_random_number" })
  
  
  get("/square/:user_number", { :controller => "calculations", :action => "square_form"})
  
  get("square_root/:square_root_number", { :controller => "calculations", :action => "square_root_form"})
  
  get("/payment/:basis_points/:number_of_years/:present_value", { :controller => "calculations", :action => "payment_form"}) 
  
  get("random/:min/:max", { :controller => "calculations", :action => "random_number_form"})
  
  
  
  # get("/word_count/:user_text/:special_word", {:controller => "calculations", :action => "word_count_form"})
  
  # get("/descriptive_stats/:list_of_numbers", {:controller => "calculations", :action => "stats_form"})
  
  
  
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end
