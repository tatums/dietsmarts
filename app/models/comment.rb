class Comment < ActiveRecord::Base
  belongs_to :commentable, :polymorphic => true, :counter_cache => true 
  belongs_to :user
  
  #validates_presence_of :body, :message => "Comment Can NOT be empty."
  #validates :body, :presence => {:message => ' - Comment can NOT be empty, Please leave feedback and try again'}
  
end
