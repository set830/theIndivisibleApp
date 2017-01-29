CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => ENV['aws_access_key_id'],                        # required
    :aws_secret_access_key  => ENV['aws_secret_access_key'],                        # required
  }
  config.fog_directory  = ENV['S3_BUCKET_NAME']                     # required
end