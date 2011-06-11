class ChangeFoodsCategoryIdToFoodCategoryId < ActiveRecord::Migration
  def self.up
    rename_column :foods, :category_id, :food_category_id
  end

  def self.down
    rename_column :foods, :food_category_id, :category_id
  end
end
