class ReviewsController < ApplicationController


  def new
    @show = true;
    @product = Product.find(params[:product_id])
    @review = Review.new
    render 'products/show'
  end

  def create
    @product = Product.find(params[:product_id])
    @review = Review.new(review_params)
    if @review.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  private
  def review_params
    params.require(:review).permit(:user, :content, :rating, :product_id)
  end
end
