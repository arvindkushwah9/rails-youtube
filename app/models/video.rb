class Video < ApplicationRecord

	belongs_to :user

	mount_uploader :video, VideoUploader

	after_save :upload_video

	def upload_video
		if youtube && user.is_youtube_authorized?
			account = Yt::Account.new access_token: user.authentications.where(provider: "google_oauth2").last.access_token
			Yt.configuration.client_id = ENV["GOOGLE_CLIENT_ID"]
			Yt.configuration.client_secret = ENV["GOOGLE_CLIENT_SECRET"]
			account.upload_video video_url, title: title, description: description
		end
	end

end
