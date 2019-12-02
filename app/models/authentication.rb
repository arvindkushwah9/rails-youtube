class Authentication < ApplicationRecord

	def self.create_from_google_data(provider_data, user_id)
    where(provider: provider_data.provider, uid: provider_data.uid, user_id: user_id).first_or_create do | authentication |
      authentication.access_token = provider_data[:credentials][:token]
      authentication.refresh_token = provider_data[:credentials][:refresh_token]
    end
  end

  def self.create_from_facebook_data(provider_data, user_id)
    where(provider: provider_data.provider, uid: provider_data.uid, user_id: user_id).first_or_create do | authentication |
      authentication.access_token = provider_data[:credentials][:token]
      authentication.refresh_token = provider_data[:credentials][:refresh_token]
    end
  end

  def self.create_from_instagram_data(provider_data, user_id)
    where(provider: provider_data.provider, uid: provider_data.uid, user_id: user_id).first_or_create do | authentication |
      authentication.access_token = provider_data[:credentials][:token]
      authentication.refresh_token = provider_data[:credentials][:refresh_token]
    end
  end

end
