class CalculationsController < ApplicationController
  def flex_square
    # The incoming parameters for this action look like {"a_number"=>"5"}
    # Rails stores that hash in a variable called params
    
    @user_number_flex = params["a_number_flex"].to_i
    @squared_number_flex = @user_number_flex**2
    
    render("calculations/flexible_square_template.html.erb")
  end
  
  
  def flex_square_root
    
    @user_square_root_flex = params["a_number_flex"].to_i
    @square_root_flex = Math.sqrt(@user_square_root_flex)
    
    render("calculations/flexible_square_root_template.html.erb")
  end
  
  
  def flex_payment
    
    @monthly_interest_basispoints_flex = params["basis_points"].to_f
    @number_of_years_flex = params["number_of_years"].to_i
    @present_value_flex = params["present_value"].to_i
    
    @monthly_interest_percentage_flex = @monthly_interest_basispoints_flex/10000
    @monthly_interest_per_period_flex = @monthly_interest_percentage_flex/12
    
    @number_of_monthly_payments_flex = @number_of_years_flex*-12
    
    @one_plus_rate_per_period = (1 + @monthly_interest_per_period_flex)**@number_of_monthly_payments_flex
    
    @denomonator_step_one = (1 - @one_plus_rate_per_period)
    
    @numerator = (@monthly_interest_per_period_flex*@present_value_flex).to_i
    @denomonator = (@denomonator_step_one).to_i
    
    @monthly_payment_flex = @numerator/(1-(1+@monthly_interest_per_period_flex)**(@number_of_monthly_payments_flex))
   
    
    render("calculations/flexible_payment_template.html.erb")
  end
  
  
  def flex_random_number
    
    @random_number_flex = params["random_number_flex"].to_i
    @random_number_output_flex = rand(50...100)
    
    # random number between 50 & 100
    
    render("calculations/flexible_random_number_template.html.erb")
  end
  
  
  
  
  
  
  
  def square_form
    
    @user_number = params["number_input"].to_i
    @squared_number = @user_number**2
    
    render("calculations/square_form_template.html.erb")
  end
  
  
  def square_root_form
    
    @user_number_square_root = params["number_input_square_root"].to_i
    @squared_root = Math.sqrt(@user_number_square_root)
    
    render("calculations/square_root_form_template.html.erb")
  end

  
  def payment_form
    
    @monthly_interest_basispoints = params["interest_input"].to_f
    @number_of_years = params["years_input"].to_i
    @present_value = params["principal_input"].to_i
    
    @monthly_interest_percentage = @monthly_interest_basispoints/10000
    @monthly_interest_per_period = @monthly_interest_percentage/12
    
    @number_of_monthly_payments = @number_of_years*-12
    
    @one_plus_rate_per_period = (1 + @monthly_interest_per_period)**@number_of_monthly_payments
    
    @denomonator_step_one = (1 - @one_plus_rate_per_period)
    
    @numerator = (@monthly_interest_per_period*@present_value).to_i
    @denomonator = (@denomonator_step_one).to_i
    
    @monthly_payment = @numerator/(1-(1+@monthly_interest_per_period)**(@number_of_monthly_payments))
    
    render("calculations/payment_form_template.html.erb")
  end
  
  
  def random_number_form
    
    @minimum = params["random_minimum_input"].to_i
    @maximum = params["random_maximum_input"].to_i
    @random_number_output = rand(@minimum...@maximum)
    
    render("calculations/random_number_form_template.html.erb")
  end
  
  
  def word_count_form
     
    @text = params["word_count_input"]
    @special_word = params["special_word_input"]

    @word_count = @text.split(" ").length

    @character_count_with_spaces = @text.length

    @character_count_without_spaces = @text.length-@text.count(" ")

    punctuation = @text.chomp(".")
    
    downcased_words = punctuation.downcase.split(" ")
    
    downcased_special = @special_word.downcase

    @occurrences = downcased_words.count(downcased_special)
     
    
    render("calculations/word_count_form_template.html.erb")
  end
  
  
  def stats_form
     
    @numbers = params["list_of_numbers_input"].gsub(',', '').split.map(&:to_f)
     
    @sorted_numbers = @numbers.sort

    @count = @numbers.count

    @minimum_stats = @numbers.min

    @maximum_stats = @numbers.max

    @range = @maximum_stats-@minimum_stats

    @median = @sorted_numbers[((@count/2)+(1/2))]

    @sum = @numbers.sum

    @mean = @sum/@count

    @demeaned=@numbers.map { |i| i - @mean}
    @squared = @demeaned.map { |i| i**2}
    @variance = @squared.sum / @count

    @variance = @squared.sum / @count

    @standard_deviation = Math.sqrt(@variance)

    @mode_count = @numbers.map { |i| @numbers.count(i)}
    @mode = @numbers[@mode_count.index(@mode_count.sort[@mode_count.count - 1])]
    
    render("calculations/stats_form_template.html.erb")
  end
  
  
  
end

