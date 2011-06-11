class FoodCategoriesController < ApplicationController


  def index
    @food_categories = FoodCategory.all
  end


  def new
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end


  def show
    @food_category = FoodCategory.find(params[:id])
    @foods = @food_category.foods
  end

end
