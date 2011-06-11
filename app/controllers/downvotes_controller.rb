class DownvotesController < ApplicationController

  before_filter :require_user

  def index
  end


  def create
    @diet_food = DietFood.find(params[:diet_food_id])
    @diet_food.downvotes.create(:user_id => current_user.id)
    redirect_to(@diet_food.diet, :notice => 'Vote was successfully created.')    
  end

end
