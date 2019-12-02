class HomeController < ApplicationController
  def index
  	if current_user.is_youtube_authorized?
			account = Yt::Account.new access_token: current_user.authentications.where(provider: "google_oauth2").last.access_token
			Yt.configuration.client_id = ENV["GOOGLE_CLIENT_ID"]
			Yt.configuration.client_secret = ENV["GOOGLE_CLIENT_SECRET"]
			@videos = account.videos
		end
  end
end
