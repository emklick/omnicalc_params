class CalculationsController < ApplicationController
  def homepage
    
    <table class="table table-hover">
    
    div class="container">
    <div class="row">
        <div class="col-sm-5">
            Part I Targets
        </div>
        
        <div class="col-sm-5">
            <a href = "https://omnicalc-params-emklick.c9users.io/flexible/square/new"> Flexible Square Example </a>
        </div>
        
        <div class="col-sm-5">
            <a href = "https://omnicalc-params-emklick.c9users.io/flexible/square_root/new"> Flexible Square Root Example </a>
        </div>
        
        <div class="col-sm-5">
           <a href = "https://omnicalc-params-emklick.c9users.io/flexible/payment/new"> Flexible Payment Example </a>
        </div>
        
        <div class="col-sm-5">
            <a href = "https://omnicalc-params-emklick.c9users.io/flexible/random/new"> Flexible Random Example </a>
        </div>
        
    </div>
    <div class="row">
        <div class="col-sm-5">
            Part II Targets
        </div>
        
        <div class="col-sm-5">
            <a href = "https://omnicalc-params-emklick.c9users.io/square/new"> Square Form </a>
        </div>
        
        <div class="col-sm-5">
            <a href = "https://omnicalc-params-emklick.c9users.io/square_root/new"> Square Root Form </a>
        </div>
        
        <div class="col-sm-5">
            <a href = "https://omnicalc-params-emklick.c9users.io/payment/new"> Payment Form </a>
        </div>
        
        <div class="col-sm-5">
            <a href = "https://omnicalc-params-emklick.c9users.io/random/new"> Random Number Form </a>
        </div>
        
        
    </div>
    <div class="row">
        <div class="col-sm-5">
            Part III Targets
        </div>
        
        <div class="col-sm-5">
            <a href = "https://omnicalc-params-emklick.c9users.io/word_count/new"> Word Count Form </a>
        </div>
        
        <div class="col-sm-5">
            <a href = "https://omnicalc-params-emklick.c9users.io/descriptive_stats/new"> Stats Form </a>
        </div>
        
        
    </div>
    <div class="row">
        <div class="col-md-1">
            
            
        </div>
    </div>
</div>
</table>

    
    
    
    
    
    render("calculations/homepage_template.html.erb")
  end
  
  
end