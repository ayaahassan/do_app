class ReviewsController < ApplicationController

    def create
        @review = Review.new(review_params)
        if @review.save
        render :json => @review
        else
            render :json => "can't create review"

        end    
        
    end

    private
    def review_params
        params.require(:review).permit(:rate,:comment,:user_id,:post_id)
      end
end
