class Downvote < ActiveRecord::Base
  belongs_to :diet_food, :counter_cache => true
  belongs_to :user
  
  after_create :update_score


  def update_score
    diet_food = self.diet_food
    diet_food.decrement_score_column
  end


end
