class Diet < ActiveRecord::Base
  def to_param
    "#{id}-#{name.gsub(/\W/, '-').downcase}"
  end
  attr_readonly :comments_count

  before_create :setup_foods


  validates_presence_of :name, :description
  validate :cannot_be_default_description
  
  

  has_many :diet_foods
  has_many :foods, :through => :diet_foods
  
  belongs_to :category
  has_many :comments, :as => :commentable
  
  
  def cannot_be_default_description
     errors.add_to_base "You must change the default description" if description == "Diet Description"
  end
  
private  
  #after creating a diet. This sets up the diet_foods table 
  def setup_foods
    all_foods = Food.all
    self.foods << all_foods
  end
  
  

  
  
end
