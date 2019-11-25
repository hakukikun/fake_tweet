class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @tweets = user.tweets.page(params[:page]).per(5).order("created_at DESC")
  end

  def likes
    @user=User.find_by(id: params[:id])
    @likes=Like.where(user_id: :@user.id)
  end

  def unlikes
    @user=User.find_by(id: params[:id])
    @unlikes=Unlike.where(user_id: :@user.id)
  end

  def score
    user = User.find(params[:id])
    a = Tweet.sum(:likes_count)
    b = Tweet.group(tweets.user_id).sum(:unlikes_count)
    User.create(score: a)
  end

  private
    def user_params
        params.permit(:score)
    end

end
