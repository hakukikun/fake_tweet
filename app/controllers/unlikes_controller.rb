class UnlikesController < ApplicationController

  def create
    @unlike = Unlike.new(user_id: current_user.id, tweet_id: params[:tweet_id])
    @unlike.save
    @tweet = Tweet.find_by(id: @unlike.tweet_id)
    @unlike_count = Unlike.where(tweet_id: params[:tweet_id]).count
    redirect_to("/tweets")
  end

  def destroy
    @unlike = Unlike.find_by(user_id: current_user.id, tweet_id: params[:tweet_id])
    @unlike.destroy
    @tweet = Tweet.find_by(id: @unlike.tweet_id)
    @unlike_count = Unlike.where(tweet_id: params[:tweet_id]).count
    redirect_to("/tweets")
  end

end
