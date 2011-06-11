module DietsHelper


  def score(diet_food)
      food_score = diet_food.upvotes_count - diet_food.down_count
      return food_score
  end  

  def read_more(diet)
      desc = diet.description
      preview_words = 30
      total_words = desc.split.length
      if total_words < 2
        preview = "This Diet contains no description  ... "
      else
        preview = desc.split[0..30].join(" ")+" ... "
      end
    return preview
  end  


end
