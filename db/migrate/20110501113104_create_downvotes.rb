class CreateDownvotes < ActiveRecord::Migration
  def self.up
    create_table :downvotes do |t|
      t.integer :user_id
      t.integer :diet_food_id

      t.timestamps
    end
  end

  def self.down
    drop_table :downvotes
  end
end
