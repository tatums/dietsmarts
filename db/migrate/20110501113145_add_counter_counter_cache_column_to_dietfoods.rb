class AddCounterCounterCacheColumnToDietfoods < ActiveRecord::Migration
  def self.up
    add_column :diet_foods, :upvotes_count, :integer, :default => 0
    add_column :diet_foods, :downvotes_count, :integer, :default => 0
  end

  def self.down
    remove_column :diet_foods, :upvotes_count
    remove_column :diet_foods, :downvotes_count
  end
end
