class SubmissionsController < DishesController

  respond_to :json

  def index
   if params[:user_id]
      @user = User.find(params[:user_id]) 
      @submissions = params[:id] ? @user.submissions.find('id in (?)', params[:id].split(",")) : @user.submissions
    else 
      @submissions = params[:id] ? Submission.where('id in (?)', params[:id].split(",")) : Submission.all
    end
  end
   
   def create
     @submission = Submission.new(post_params)

     if @submission.save
       head :created
     else
       head :unprocessable_entity
     end
   end  

   def update
     @submission = Submission.where('id = ?', params[:id]).take
     
    if @submission
      if @submission.update(post_params)
      head :ok
      else
      head :unprocessable_entity
     end
    else head :not_found
    end
   end

   def destroy
     render text: "Destroying submission #" + params[:id]
     @submission.destroy if @submission = Submission.where('id = ?', params[:id]).take

     head :no_content
   end 

   private

   def post_params
     params.require(:submission).permit(:dish_name, :dish_description, :blog_link, :is_accepted, :restaurant_id, :user_id, :price, :image, :restaurant_neighborhood)
   end

 end
