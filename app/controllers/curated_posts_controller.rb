class CuratedPostsController < DishesController

  respond_to :json

  # def image
  #   tempfile = Tempfile.new("imageupload")
  #   tempfile.binmode
  #   tempfile << request.body.read
  #   tempfile.rewind

  #   image_params = params.slice(:filename, :type, :head).merge(:tempfile => tempfile)
  #   image = ActionDispatch::Http::UploadedFile.new(image_params)

  #   @curated_post = CuratedPost.find(params[:id])
  #   @curated_post.image = image

  #   respond_to do |format|
  #     if @curated_post.save
  #       head :ok
  #     else
  #       render :json => @curated_post.errors, 
  #       head :unprocessable_entity
  #     end
  #   end
  # end

  def new 
    @curated_post = CuratedPost.new
  end

  def index
    @curated_posts = params[:id] ? CuratedPost.where('id in (?)', params[:id].split(",")) : CuratedPost.all
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
        head :ok
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
