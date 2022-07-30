class AuthorsController < ApplicationController
  before_action :set_author, only: [:show, :edit, :update, :destroy]
  def index
    @authors = Author.all.order(first_name: :asc)
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    respond_to do |format| 
      if @author.save
      format.js
      else
      format.js
      end
    end
  end

  def show
    
  end

  def edit
  end

  def update
    respond_to do |format| 
      if @author.update(author_params)
        format.js
      else
        format.js
      end
    end
  end
  
  def destroy
    @author.destroy
      respond_to do |format|
        format.js
      end
  end


  private
  def author_params
    params.require(:author).permit(:first_name, :last_name, :address)
  end
  def set_author
    @author = Author.find(params[:id])
  end
end
