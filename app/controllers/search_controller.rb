class SearchController < ApplicationController

  def tweets
  	client = Twitter::REST::Client.new do |config|
	  config.consumer_key        = "KYVz2qaaPdDjA5G5oKom0ycnv"
	  config.consumer_secret     = "XVy9BNEzVpK2yVzOajd5Qy1nbE8YCVs9bfXnSJkGxlfF21hIjV"
	  config.access_token        = "705727692-430Drv1RSmzZqzKTDDwnMQH9RHuBi8PUzK3I7R6y"
	  config.access_token_secret = "QxdnV1mT3XeBHuGUkbifUU8AVihCgi2EE7QKTUnOyHyZm"
	end

	search_text = params[:text] || "MARKETIQ"

  	# data = client.search(search_text, result_type: "recent").take(10)
  	# binding.pry

  	render :text => client.search(search_text, result_type: "recent").take(10).map {|tweet| tweet.text }.to_json

  end

  def home


  end



end