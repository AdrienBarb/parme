class ReviewsController < ApplicationController
  def new
    @dress = Dress.find(params[:dress_id])
    @review = Review.new
    authorize @review
  end

  def create
    @dress = Dress.find(params[:dress_id])
    @review = Review.new(reviews_params)
    authorize @review
    @review.dress = @dress
    @review.user = current_user
    if @review.save!
      redirect_to dress_path(@dress)
    else
      render :new
    end
  end

  private

  def reviews_params
    params.require(:review).permit(:rating, :description)
  end
end
