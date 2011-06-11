class Upvote < ActiveRecord::Base
  belongs_to :diet_food, :counter_cache => true
  belongs_to :user

  after_create :update_score
  
  
  #validates_uniqueness_of :user_id, :scope => "diet_food_id"
  
  
  def self.only_user_id
    select("user_id").map(&:user_id)
  end

  def self.bottom
    where("score <  ?", -1 ).limit(3).order("score ASC")
  end  
  
  
  #only one vote is allower for each diet_food
  def only_one_vote_per_user
    errors.add(:user_id, "...You can only vote once.") if
          self.diet_food.upvotes.only_user_id.include?(ip_user.id)
  end
  
  
  def update_score
    diet_food = self.diet_food
    diet_food.increment_score_column
  end
  
end
