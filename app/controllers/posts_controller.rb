class PostsController < ApplicationController

    def create
        @post = Post.new(post_params)
        if @post.save
        render :json => @post
        else
            render :json => "can't create post"

        end    
        
    end

    private
    def post_params
        params.require(:post).permit(:title, :body, :user_id)
    end
end
