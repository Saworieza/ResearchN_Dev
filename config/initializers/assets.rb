# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( bootstrap.css )
Rails.application.config.assets.precompile += %w( bootstrap-responsive.css )
Rails.application.config.assets.precompile += %w( prettyPhoto.css )
Rails.application.config.assets.precompile += %w( flexslider.css )
Rails.application.config.assets.precompile += %w( custom-styles.css )
Rails.application.config.assets.precompile += %w( jquery.lightbox-0.5.css )

Rails.application.config.assets.precompile += %w( jquery-1.8.3.min.js )
Rails.application.config.assets.precompile += %w( bootstrap.js )
Rails.application.config.assets.precompile += %w( jquery.prettyPhoto.js )
Rails.application.config.assets.precompile += %w( jquery.flexslider.js )
Rails.application.config.assets.precompile += %w( jquery.custom.js )
