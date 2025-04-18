class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    Tweet.create(tweet_params)
    redirect_to "/"
  end

  private
  def tweet_params
    params.require(:tweet).permit(:name, :image, :text)
  end

end
