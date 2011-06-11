# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Category.delete_all
Diet.delete_all
Food.delete_all
Comment.delete_all
DietFood.delete_all
Upvote.delete_all
Downvote.delete_all
FoodCategory.delete_all

#Food Groups
bg = FoodCategory.create(:name => 'Baked Products')

beef = FoodCategory.create(:name => 'Beef Products')
beef.foods.create( :name => 'Steak')
  
beverage = FoodCategory.create(:name => 'Beverages')
beverage.foods.create([ {:name => 'Orange Juice'}, {:name => 'Cola'} ])
  
cereal = FoodCategory.create(:name => 'Cereals')
cereal.foods.create([ {:name => 'Oatmeal'},{:name => 'Lucky Charms'} ]) 
  
grain_or_pasta = FoodCategory.create(:name => 'Grains & Pastas')
  grain_or_pasta.foods.create([{:name => 'Barley'},{:name => 'Brown rice'},{:name => 'Buckwheat'},{:name => 'Corn'},
  {:name => 'Millet'},{:name => 'Oats'},{:name => 'Quinoa'},{:name => 'Rye'},{:name => 'Spelt'},{:name => 'Whole wheat'}])


de = FoodCategory.create(:name => 'Dairy & Egg Products')



fruit = FoodCategory.create(:name => 'Fruits & Fruit Juices')
  fruit.foods.create([
    {:name => 'Apples'},{:name => 'Apricots'},{:name => 'Bananas'},{:name => 'Blueberries'},{:name => 'Cantaloupe'},
    {:name => 'Cranberries'},{:name => 'Figs'},{:name => 'Grapefruit'},{:name => 'Grapes'},{:name => 'Kiwi'},{:name => 'Lemons'},
    {:name => 'Limes'},{:name => 'Oranges'},{:name => 'Papaya'},{:name => 'Pears'},{:name => 'Pineapple'},{:name => 'Plums'},
    {:name => 'Prunes'},{:name => 'Raisins'},{:name => 'Raspberries'},{:name => 'Strawberries'},{:name => 'Watermelon'}])
  
  
alt_meats = FoodCategory.create(:name => 'Lamb, Veal, & Game Products')

ll = FoodCategory.create(:name => 'Legumes & Legume Products')

meals = FoodCategory.create(:name => 'Meals, Entrees, & Sidedishes')

nuts = FoodCategory.create(:name => 'Nuts, Seeds & Oils')
 nuts.foods.create([
  {:name => 'Almonds'},{:name => 'Cashews'},{:name => 'Flaxseeds'},{:name => 'Olive oil, extra virgin'},
  {:name => 'Peanuts'},{:name => 'Pumpkin seeds'},{:name => 'Sesame seeds'},{:name => 'Sunflower seeds'},{:name => 'Walnuts'}])

pork = FoodCategory.create(:name => 'Pork Products')

poultry = FoodCategory.create(:name => 'Poultry Products')
poultry.foods.create( :name => 'Chicken' )

restaurant = FoodCategory.create(:name => 'Restaurant Foods')

sausage = FoodCategory.create(:name => 'Sausages & Luncheon Meats')

snack = FoodCategory.create(:name => 'Snacks')

soups = FoodCategory.create(:name => 'Soups, Sauces, & Gravies')

spices = FoodCategory.create(:name => 'Spices & Herbs')

sweets = FoodCategory.create(:name => 'Sweets')

vegie = FoodCategory.create(:name => 'Vegetables & Veg Products')
vegie.foods.create([
  {:name => 'Asparagus'},{:name => 'Avocados'},{:name => 'Beets'},{:name => 'Bell peppers'},{:name => 'Broccoli'},
  {:name => 'Brussels sprouts'},{:name => 'Cabbage'},{:name => 'Carrots'},{:name => 'Cauliflower'},{:name => 'Celery'},
  {:name => 'Collard greens'},{ :name => 'Corn' },{:name => 'Cucumbers'},{:name => 'Eggplant'},{:name => 'Fennel'},{:name => 'Garlic'},
  {:name => 'Green beans'},{:name => 'Green peas'},{:name => 'Kale'},{:name => 'Leeks'},{:name => 'Mushrooms'},{:name => 'Mustard greens'},
  {:name => 'Olives'},{:name => 'Onions'},{:name => 'Potatoes'},{:name => 'Romaine lettuce'},{:name => 'Sea vegetables'},
  {:name => 'Spinach'},{:name => 'Squash'},{:name => 'Sweet potatoes'},{:name => 'Swiss chard'},{:name => 'Tomatoes'},
  {:name => 'Turnip greens'},{:name => 'Yams'}
])
#-----------------------------------------------------------------------
allergy_diet = Category.create(:name => 'Allergy Diets')
  allergy_diet.diets.create(:name => 'Gluten', :description => 'A gluten-free diet is a diet free of gluten. Gluten is a protein 
    found in wheat (including kamut and spelt), barley, rye, malts and triticale. It is used as a food additive in the form of
    a flavoring, stabilizing or thickening agent, often hidden under "dextrin". A gluten-free diet is the only medically 
    accepted treatment for celiac disease, the related condition dermatitis herpetiformis, and wheat allergy. Additionally, 
    a gluten-free diet may exclude oats. Medical practitioners are divided on whether oats are an allergen to celiac disease 
    sufferers or if they are cross-contaminated in milling facilities by other allergens.  The term gluten-free is generally 
    used to indicate a supposed harmless level of gluten rather than a complete absence. The exact level at which gluten is
    harmless is uncertain and controversial. A recent systematic review tentatively concluded that consumption of less than
    10 mg of gluten per day is unlikely to cause histological abnormalities, although it noted that few reliable studies had
    been done. Regulation of the label gluten-free varies widely by country. In the United States, the FDA issued 
    regulations in 2007 limiting the use of "gluten-free" in food products to those with less than 20 ppm of gluten.
    The current international Codex Alimentarius standard allows for 20 ppm of gluten in so-called "gluten-free" foods.')

   allergy_diet.diets.create(:name => 'Lactose', :description =>  'The most common food intolerance is lactose intolerance, 
     which affects as many as 30% of American adults, and is particularly common in people of African and Asian heritage.
     People with lactose intolerance do not produce enough of the digestive enzyme called lactase, which breaks down the 
     milk sugar (lactose) found in dairy products. When too much undigested lactose makes its way into the large intestine, 
     people suffer from gas and/or diarrhea.')
       
   allergy_diet.diets.create(:name => 'Wheat', :description => 'Wheat intolerance, wheat allergy, and wheat sensitivity are 
      all terms frequently used to described adverse reaction to this food. Wheat is somewhat unique when it comes to adverse 
      food reactions, particularly because it has long been classified as the primary "gluten grain" and because its research 
      history has been both complicated and controversial. Understanding allergy-related issues associated with gluten is 
      important for understanding problems connected to wheat.') 

   allergy_diet.diets.create(:name => 'Gluten Intolerance', :description => 'The term "gluten" comes from the world of industry, 
      not science. In the world of industrial baked goods, gluten is a gummy, yellow-gray material that is left over after dough 
      (made from flour and water) has been washed. When the dough is washed, many of the water-soluble substances and starches 
      are washed off and what\'s left is a complicated mixture that has traditionally been referred to gluten. The dough used 
      to produce gluten does not have to be made from wheat flour. Other cereal grains like oats can also be used to produce 
      gluten. In industrial practice, however, wheat is almost always the food source for producing gluten.')

   allergy_diet.diets.create(:name => 'Celiac', :description => 'Celiac disease is a health condition that some people associate 
      with simple gluten intolerance. However, celiac disease is in fact a multi-system autoimmune disease in which changes in 
      liver function, digestive tract function, and the function of other organ systems comes into play. The role of a specific 
      enzyme, called tissue transglutaminase, or tTG, appears to be especially important in celiac disease. Short strands of 
      protein (polypeptides) found in gliadin (one family of wheat proteins) are acted on by this enzyme, and many resulting 
      problems associated with Celiac disease may result. For some, but not all individuals, a blood test measuring antibodies 
      to tTG can be an effective screening test for Celiac disease.' )

   allergy_diet.diets.create(:name => 'Salicylate', :description => 'Salicylates are chemicals found naturally in all plants, 
      although the amount of salicylates varies from plant to plant. For plants, salicylates act as a natural preservative, 
      protecting against rotting, and against harmful bacteria and fungi. For humans, salicylates are a major ingredient of 
      aspirin and other pain-relieving medications. They also are found in many fruits and vegetables, as well as many 
      common health and beauty products.')




calorie_diet = Category.create(:name => 'Calorie Counting Diets')
detox_diet = Category.create(:name => 'Detox Diets & Cleanses')

low_carb_diet = Category.create(:name => 'Low Carb Diets')

eleven = Category.create(:name => 'Vegetarian Diets')



#Display stat info about what was added to the DB.

puts "Seeded #{Category.all.size} Categories."
puts "Seeded #{Diet.all.size} Diets."
puts "Seeded #{FoodCategory.all.size} Food_Categories."
puts "Seeded #{Food.all.size} Foods."
puts "Seeded #{DietFood.all.size} Diet_Foods."


