CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAINAZ454M6RQIQXSQ',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-1'
  }
  config.fog_directory  = 'gochina'                          # required
end