class CommentsController < ApplicationController
  
  def new
  end

  def create
    @commentable = find_commentable
    @comment = @commentable.comments.build(params[:comment])    
    @comment.user_id = current_user.id
    respond_to do |format|
      if @comment.save
        format.html { redirect_to(@commentable, :notice => 'Comment was successfully created.') }
        format.xml  { render :xml => @commentable, :status => :created, :location => @diet }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @comment.errors, :status => :unprocessable_entity }
      end
    end
    
  end

  def edit
  end

  def update
  end

  def destroy
  end

private

  def find_commentable
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find(value)
      end
    end
    nil
  end


end
