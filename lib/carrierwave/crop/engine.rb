# encoding: utf-8

module CarrierWave
  module Crop
    class Engine < ::Rails::Engine
      initializer 'bootstrap-sass.assets.precompile' do |app|
        %w(stylesheets javascripts images).each do |sub|
          app.config.assets.paths << root.join('assets', sub).to_s
        end
        app.config.assets.precompile += %w( Jcrop.gif )
	  end
    end
  end
end
