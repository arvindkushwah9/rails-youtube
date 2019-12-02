CarrierWave.configure do |config|
  # if Rails.env.development? || Rails.env.test?
    # config.storage = :file
  # else
    config.fog_credentials = {
      :provider               => 'AWS',       # required
      :aws_access_key_id      => ENV['AWS_ACCESS_KEY_ID'], # required
      :aws_secret_access_key  => ENV['AWS_SECRET_ACCESS_KEY'],  # required
      :region                 => ENV['REGION'], # optional, defaults to 'us-east-1'
      :endpoint               => 'https://s3-ap-south-1.amazonaws.com'
    }
    config.storage = :fog
    config.fog_directory  = ENV['AWS_BUCKET_NAME'] # required
    # config.fog_public     = false     
    config.fog_attributes = { :cache_control => 'max-age=315576000', :expires => 1.year.from_now.httpdate }
    # see https://github.com/jnicklas/carrierwave#using-amazon-s3
    # for more optional configuration
  # end
end