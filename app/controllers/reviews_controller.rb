class ReviewsController < ApplicationController
    def index
        @reviews = Review.all 
    end
    
    def new
        # byebug
        @restaurant = Restaurant.find(params[:restaurant_id])
        @review = Review.new(restaurant:@restaurant)
    end 

end
