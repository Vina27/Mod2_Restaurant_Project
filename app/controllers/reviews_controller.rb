class ReviewsController < ApplicationController
    def index
        @reviews = Review.all 
    end
    
    def new
        @errors = flash[:error]
        # byebug
        # @restaurant = Restaurant.find(params[:restaurant_id])
        @review = Review.new 
        # (restaurant:@restaurant)
    end 

    def create 
        @review = Review.create(review_params)
        if @review.valid?
            redirect_to restaurant_path(@review.restaurant)
            # redirect_to review_path(@review)
          else 
            flash[:error] = @review.errors.full_messages
            redirect_to new_review_path
          end
      
    end 
    

    private 
    
    def review_params
        params.require(:review).permit(:content, :title, :user_id, :restaurant_id)
    end 

end
