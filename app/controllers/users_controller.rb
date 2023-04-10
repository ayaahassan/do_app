class UsersController < ApplicationController

    def create
        @user = User.new(user_params)
        if @user.save
        render :json => @user
        else
            render :json => "can't create user"

        end    
        
    end
    
    def listPosts
        @user= User.find(params[:id])
        puts @user.posts.page(params[:page])
        render :json => @user.posts.offset(params[:skip]).limit(params[:limit])

    end    



    private
    def user_params
        params.require(:user).permit(:name,:page)
      end
end
