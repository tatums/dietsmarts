class DietFood < ActiveRecord::Base
  
  attr_readonly :comments_count
  
  belongs_to :diet
  belongs_to :food
  
  has_many :upvotes
  has_many :downvotes
  
  
  has_many :comments, :as => :commentable
  
  #after_update :update_score_column
  
  def self.good
    where("score > ?", 0).order("score DESC")
  end

  def self.neutral
    where("score = ?", 0).order("score ASC")
  end

  def self.bad
    where("score < ?", 0).order("score DESC")
  end
  
    
  def self.order_by_score
    order("score DESC")
  end  
  
  def self.top
    where("score >  ?", 1 ).limit(3).order("score DESC")
  end  
  
  def self.bottom
    where("score <  ?", -1 ).limit(3).order("score ASC")
  end  
  
  
  def increment_score_column
    score_count = (self.upvotes_count + 1) - self.downvotes_count
    self.score = score_count
    self.save
  end

  def decrement_score_column
    score_count = self.upvotes_count - (self.downvotes_count + 1)
    self.score = score_count
    self.save
  end
  
end
