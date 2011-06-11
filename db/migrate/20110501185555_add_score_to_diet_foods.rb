class AddScoreToDietFoods < ActiveRecord::Migration
  def self.up
    add_column :diet_foods, :score, :integer, :default => 0 
  end

  def self.down
    remove_column :diet_foods, :score, :integer
  end
end
