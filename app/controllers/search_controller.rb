class SearchController < ApplicationController

  def tweets
  	client = Twitter::REST::Client.new do |config|
	  config.consumer_key        = "iCdN9anTW3ay8N0CZczQQWfwg"
	  config.consumer_secret     = "Gb387GH7fCGAlEIj3pwTPiKsXSdPW5ZO2DlcCymVmdiRA0qdIq"
	  config.access_token        = "1898472066-lJbaERwfFhDNzwem1UlsPED1Xu5C7Yif63Br9sL"
	  config.access_token_secret = "9PFYRMACHOWJ7KcjKf5WDwHbQx4z4Egq3PIyJCEpOGdAF"
	end

	search_text = params[:text] || "MARKETIQ"


  	# data = client.search(search_text, result_type: "recent").take(10)
  	# binding.pry

    render :text => client.search(search_text, result_type: "recent").take(20).map {|tweet| {text: tweet.text, user: tweet.user.screen_name, profile_image_url: tweet.user.profile_image_url.to_s } }.to_json


  end

  def home

  end



end