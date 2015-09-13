# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
#컨트롤러-액션생성 시 다음을 추가해줘야 route접근이 가능해집니다.
Rails.application.config.assets.precompile += %w( home.js hospital.js estimating.js mypage.js review.js codis.js posts.js bulletins.js comments.js)
Rails.application.config.assets.precompile += %w( base/login3.css )

Rails.application.config.assets.precompile += %w( base/jquery.min.js base/jquery-migrate.min.js base/jquery-ui.min.js base/bootstrap.min.js base/bootstrap-hover-dropdown.min.js base/jquery.slimscroll.min.js base/jquery.blockui.min.js base/jquery.cokie.min.js base/jquery.uniform.min.js base/bootstrap-switch.min.js base/jquery.vmap.js base/jquery.vmap.russia.js base/jquery.vmap.world.js base/jquery.vmap.europe.js base/jquery.vmap.germany.js base/jquery.vmap.usa.js base/jquery.vmap.sampledata.js base/jquery.flot.min.js base/jquery.flot.resize.min.js base/jquery.flot.categories.min.js base/jquery.pulsate.min.js base/moment.min.js base/daterangepicker.js base/morris.min.js base/raphael-min.js base/jquery.sparkline.min.js base/metronic.js base/layout.js base/quick-sidebar.js base/demo.js base/index3.js base/tasks.js base/login.js base/select2.min.js base/jquery.validate.min.js )


 