class ArtworksController < ApplicationController
  
  def new
    @col = Collection.find(params[:collection_id])
    @art = @col.artworks.build
  end
    
    def create 
      @col = Collection.find(params[:collection_id])
      @art = @col.artworks.build(params[:artwork])
      if @art.save
        redirect_to "/collections/#{@col.id}/artworks"
       else
        render :template => "artworks/new"
       end
      
    end
   
   def index
     @col = Collection.find(params[:collection_id])
     @art = Artwork.find(:all, :conditions => ["collection_id=?", params[:collection_id]])
    end
    def destroy
      @col = Collection.find(params[:collection_id])
      @art = Artwork.find(params[:id])
      @art.destroy
      redirect_to "/collections/#{@col.id}/artworks"
    end
   end