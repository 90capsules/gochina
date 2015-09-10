# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
#컨트롤러-액션생성 시 다음을 추가해줘야 route접근이 가능해집니다.
Rails.application.config.assets.precompile += %w( home.js )
Rails.application.config.assets.precompile += %w( hospital.js )
Rails.application.config.assets.precompile += %w( estimating.js )
Rails.application.config.assets.precompile += %w( mypage.js )
Rails.application.config.assets.precompile += %w( review.js )
Rails.application.config.assets.precompile += %w( codis.js )