class HomeController < ApplicationController
	before_action :authenticate_user

	def index
		@tweets = Tweet.includes(:user).all.order(created_at: :desc).limit(50)
  end

  def create_tweet
  	content = params[:content]
  	current_user.tweets.create(content: content)
  	return redirect_to '/'
  end

  def like
  end

  def follow
  end

end
