class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  has_many :authentications


  def is_youtube_authorized?
    authentications.where(provider: "google_oauth2").any?
  end

  def is_facebook_authorized?
    authentications.where(provider: "facebook").any?
  end

  def is_instagram_authorized?
    authentications.where(provider: "instagram").any?
  end
  
end
