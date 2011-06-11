module DietFoodsHelper

  def score(diet_food)
      food_score = diet_food.upvotes_count - diet_food.down_count
      return food_score
  end  

end
