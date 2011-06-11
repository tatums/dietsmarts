class AddCommentsCounterCacheToDietFoods < ActiveRecord::Migration
  def self.up
    add_column :diet_foods, :comments_count, :integer, :default => 0
    add_column :diets, :comments_count, :integer, :default => 0
    
  end

  def self.down
    remove_column :diet_foods, :comments_count
    remove_column :diets, :comments_count
  end
end
