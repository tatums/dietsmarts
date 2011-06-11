class Food < ActiveRecord::Base
  def to_param
    "#{id}-#{name.gsub(/\W/, '-').downcase}"
  end
  
  after_create :add_food_to_diets


  before_validation :downcase_name
  
  belongs_to :food_category
  has_many :diet_foods
  has_many :diets, :through => :diet_foods
  
  
  validates_uniqueness_of :name





private
  #add new food to all diet_foods
  def add_food_to_diets
    diets = Diet.all
    diets.each do |diet|
      diet.foods << self
    end 
  end

  #lowercase the food before create
  def downcase_name
    self.name = self.name.downcase
  end
    

end
