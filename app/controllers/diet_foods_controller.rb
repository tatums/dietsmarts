class DietFoodsController < ApplicationController
  
  

  def show
    @diet_food = DietFood.find(params[:id])
    @comments = @diet_food.comments
   
    @commentable = @diet_food
    @comment = @commentable.comments.new
    
  end


end
