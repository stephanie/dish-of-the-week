class CuratedPostsController < DishesController

  respond_to :json

  def new 
    @curated_post = CuratedPost.new
  end

  def index
    @curated_posts = params[:id] ? CuratedPost.where('id in (?)', params[:id].split(",")) : CuratedPost.all
  end

  def show
    offset = rand(CuratedPost.count)
    curated_post = CuratedPost.first(:offset => offset)

    render json: {
      curated_post: {
        dish_name: curated_post.dish_name,
        dish_description: curated_post.dish_description,
        dish_image_url: curated_post.image.url,
        id: curated_post.id,
        up_vote: curated_post.up_vote,
        down_vote: curated_post.down_vote,
        restaurant: {
          name: curated_post.restaurant.name,
          id: curated_post.restaurant.id,
          address: curated_post.restaurant.address,
          tel: curated_post.restaurant.tel,
          cuisine_type: curated_post.restaurant.cuisine_type,
          price_range: curated_post.restaurant.price_range,
        }
      }
    }
  end
  
  def create
    @curated_post = CuratedPost.new(post_params)

    if @curated_post.save
      head :created
    else
      head :unprocessable_entity
    end
  end  

  def update
    @curated_post = CuratedPost.where('id = ?', params[:id]).take
    
    if @curated_post
      if @curated_post.update(post_params)
        head :no_content
      else
        head :unprocessable_entity
      end
    else
      head :not_found
    end
  end

  def destroy
    render text: "Destroying curated post #" + params[:id]
    @curated_post.destroy if @curated_post = CuratedPost.where('id = ?', params[:id]).take

    head :no_content
  end 

  private

  def post_params
    params.require(:curated_post).permit(:dish_name, :dish_description, :price, :blog_link, :up_vote, :down_vote, :published_on, :restaurant_id, :image)
  end

end
