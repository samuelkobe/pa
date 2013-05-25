class HomeController < ApplicationController

  def index
  end

  def social
  	begin
		timeline = Typhoeus.get("https://api.twitter.com/1/statuses/user_timeline/potentialSays.json", followlocation: true)
		@tweets = JSON.parse( timeline.body )
	rescue
	@tweets = []
    end
  end

  def team
  end

  def contact
  end
end
