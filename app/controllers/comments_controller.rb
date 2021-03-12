class CommentsController < ApplicationController
    def index
        comment = Comment.all
        render json: comment
    end

    def create
        comment = Comment.create(comment: Faker::TvShows::NewGirl.quote, user: User.all.sample, picture: Picture.all.sample)
        render json: comment
    end 

    # def destroy
    #     Comment.find(params[:id]).destroy
    #     render json: {}
    # end 
end
