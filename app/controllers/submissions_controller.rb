class SubmissionsController < DishesController

  respond_to :json

  def index
    @submissions = params[:id] ? Submission.where('id in (?)', params[:id].split(",")) : Submission.all
  end
  
  def create

  end 

  def update

  end

  def destroy

  end 

end