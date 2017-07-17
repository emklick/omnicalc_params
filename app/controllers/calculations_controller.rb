class CalculationsController < ApplicationController
  def flex_square
    # The incoming parameters for this action look like {"a_number"=>"5"}
    # Rails stores that hash in a variable called params
    
    @user_number = params["a_number"].to_i
    @squared_number = @user_number**2
    
    render("calculations/flexible_square_template.html.erb")
  end
  
  def flex_square_root
    
    @user_number = params["a_number"].to_i
    @squared_root = Math.sqrt(@user_number)
    
    render("calculations/flexible_square_template.html.erb")
  end
  
   def flex_payment
    
    @monthly_interest = (params["a_number"].to_i)
    @number_of_monthly_payments = @years*-12

    @monthly_payment = @principal*(monthly_interest/(1-(1+monthly_interest)**number_of_monthly_payments))
    
    render("calculations/flexible_square_template.html.erb")
  end
  
   def flex_random_number
    
    @random_number = rand(100)-rand(50)
    
    # random number between 50 & 100
    
    render("calculations/flexible_square_template.html.erb")
  end
  
  
  
  
  
  
  
  def square_form
    
    render("calculations/square_form_template.html.erb")
  end
  
  def process_square
    # The incoming parameters for this action look like {"the_user_number"=>"5"}
    # Rails stores that hash in a variable called params
    
    @user_number = params["the_user_number"].to_i
    @squared_number = @user_number**2
    
    render("calculations/square_results_template.html.erb")
  end
  
  def payment_form
   
    interest_rate/years/present_value
    
    # @apr = params["interest_rate"].to_i
    # @number_of_years = 
    # @principal = 
    
    
    # monthly_interest = (@apr/12)/100
    # number_of_monthly_payments = @years*-12

    # @monthly_payment = @principal*(monthly_interest/(1-(1+monthly_interest)**number_of_monthly_payments))
    
    render("calculations/payment_form_template.html.erb")
  end
  
  
  
  
  
end

