class FoodsController < ApplicationController

  before_filter :require_user, :except => [:index, :show]

  def index
    @foods = Food.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @foods }
    end
  end



  def show
    @food = Food.find(params[:id])
    #@diets = @food.diets
    #@good_foods = @food.diet_foods.good
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @food }
    end
  end



  def new
    @food = Food.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @food }
    end
  end



  def edit
    @food = Food.find(params[:id])
  end



  def create
    @food = Food.new(params[:food])
    respond_to do |format|
      if @food.save
        format.html { redirect_to(@food, :notice => 'Food was successfully created.') }
        format.xml  { render :xml => @food, :status => :created, :location => @food }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @food.errors, :status => :unprocessable_entity }
      end
    end
  end



  def update
    @food = Food.find(params[:id])
    respond_to do |format|
      if @food.update_attributes(params[:food])
        format.html { redirect_to(@food, :notice => 'Food was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @food.errors, :status => :unprocessable_entity }
      end
    end
  end



  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    respond_to do |format|
      format.html { redirect_to(foods_url) }
      format.xml  { head :ok }
    end
  end
end
