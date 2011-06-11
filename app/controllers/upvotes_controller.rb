class UpvotesController < ApplicationController
  
  before_filter :require_user

  def index
    @diet_food = DietFood.find(params[:diet_food_id])
    
  end

  
  def new
    @diet_food = DietFood.find(params[:diet_food_id])
    @upvote = @diet_food.upvotes.create(:user_id => current_user.id)
  end
  
  
  def create
    @diet_food = DietFood.find(params[:diet_food_id])
    @upvote = @diet_food.upvotes.build(:user_id => current_user.id)
    
    respond_to do |format|
      if @upvote.save
        format.html {redirect_to(@diet_food.diet, :notice => 'Vote was successfully created.')}
      else
        format.html { redirect_to(@diet_food.diet, :notice => 'Sorry You have already voted on this food.') }
      end  
    end
  end

end
