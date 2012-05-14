class CollectionsController < ApplicationController
  def index
    @col = Collection.find(:all)
  end
  
  def new 
     @col = Collection.new
  end
  
  def create 
    @col = Collection.new(params[:collection])
    if @col.save
     redirect_to "/collections/#{@col.id}"
   else
     render :template => "collections/new"
    end
  end
  
  def show
    @col = Collection.find(params[:id])
  end
  def destroy
    @col = Collection.find(params[:id])
    @col.destroy
    redirect_to "/collections"
  
  end
  
end
