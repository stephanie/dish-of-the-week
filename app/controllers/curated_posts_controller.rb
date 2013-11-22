class CuratedPostsController < DishesController

  respond_to :json

  def index
    @curated_posts = params[:id] ? CuratedPost.where('id in (?)', params[:id].split(",")) : CuratedPost.all
  end
  
  def create

  end 

  def update

  end

  def destroy

  end 

end