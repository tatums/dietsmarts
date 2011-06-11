class DietsController < ApplicationController

  before_filter :require_user, :except => [:index, :show]
  

  def index
    @diets = Diet.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @diets }
    end
  end

  def show
    @diet = Diet.find(params[:id])

    @commentable = @diet
    @comment = @commentable.comments.new
    @comments = @diet.comments
    
    @good_foods = @diet.diet_foods.good
    @neutral_foods = @diet.diet_foods.neutral
    @bad_foods = @diet.diet_foods.bad
    
    @top_foods =  @diet.diet_foods.top
    @bottom_foods = @diet.diet_foods.bottom
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @diet }
    end
  end

  def new
    @diet = Diet.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @diet }
    end
  end

  def edit
    @diet = Diet.find(params[:id])
  end

  def create
    @diet = Diet.new(params[:diet])

    respond_to do |format|
      if @diet.save
        format.html { redirect_to(@diet, :notice => 'Diet was successfully created.') }
        format.xml  { render :xml => @diet, :status => :created, :location => @diet }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @diet.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @diet = Diet.find(params[:id])

    respond_to do |format|
      if @diet.update_attributes(params[:diet])
        format.html { redirect_to(@diet, :notice => 'Diet was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @diet.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @diet = Diet.find(params[:id])
    @diet.destroy

    respond_to do |format|
      format.html { redirect_to(diets_url) }
      format.xml  { head :ok }
    end
  end
end
