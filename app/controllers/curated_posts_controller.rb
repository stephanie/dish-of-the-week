class CuratedPostsController < DishesController
  before_action :get_curated_post, only: [ :edit, :update, :destroy ]

  respond_to :json

  # GET /api/curated_posts
  # GET /api/curated_posts/:id (can be comma-separated list)
  def index
    @curated_posts = params[:id] ? CuratedPost.where('id in (?)', params[:id].split(",")) : CuratedPost.all
  end

  # GET /api/curated_posts/random
  def show
    @curated_post = CuratedPost.first( :offset => rand(CuratedPost.count) )
  end

  # Returns HTML form
  def new 
    @curated_post = CuratedPost.new
  end
  
  def create
    @curated_post = CuratedPost.new(post_params)

    if @curated_post.save
      head :created
    else
      head :unprocessable_entity
    end
  end

  # Returns HTML form
  def edit
  end

  def update
    if @curated_post
      head( @curated_post.update(post_params) ? :no_content : :unprocessable_entity )
    else
      head :not_found
    end
  end

  def destroy
    @curated_post.destroy if @curated_post

    head :no_content
  end 

  private

  def get_curated_post
    @curated_post = CuratedPost.where('id = ?', params[:id]).take
  end

  def post_params
    params.require(:curated_post).permit(:dish_name, :dish_description, :price, :blog_link, :up_vote, :down_vote, :published_on, :restaurant_id, :image)
  end

end
