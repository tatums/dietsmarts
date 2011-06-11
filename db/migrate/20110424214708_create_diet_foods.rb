class CreateDietFoods < ActiveRecord::Migration
  def self.up
    create_table :diet_foods do |t|
      t.integer :diet_id
      t.integer :food_id

      t.timestamps
    end
  end

  def self.down
    drop_table :diet_foods
  end
end
