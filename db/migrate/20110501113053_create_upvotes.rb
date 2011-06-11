class CreateUpvotes < ActiveRecord::Migration
  def self.up
    create_table :upvotes do |t|
      t.integer :user_id
      t.integer :diet_food_id

      t.timestamps
    end
  end

  def self.down
    drop_table :upvotes
  end
end
