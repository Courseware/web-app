require 'handlebars/source'
require 'ember/source'
require 'ember/data/source'
require 'sprockets'
require 'haml'
require 'handlebars_assets'
require 'hamlbars/ext'

Haml::Compiler.send(:include, Hamlbars::Ext::Compiler)
HandlebarsAssets::Config.ember = true
Sprockets.register_engine '.hamlbars', HandlebarsAssets::TiltHandlebars

guard 'haml' do
  watch(/^.+(\.html\.haml)/)
end

guard 'sprockets', {
    :destination => 'public',
    :asset_paths => [
      'javascripts',
      # Zurb could definitely use some ruby love
      Pathname.new(Gem::Specification.find_by_name('zurb-foundation').gem_dir).join('js'),
      ::Ember::Source.bundled_path_for(''),
      ::Ember::Data::Source.bundled_path_for(''),
      ::HandlebarsAssets.path
    ],
    :root_file => 'public/application.js'
  } do
  watch(/^javascripts\/(.*)\.(js|coffee|hamlbars)/)
end

guard 'compass' do
  watch(/^sass\/(.*)\.s[ac]ss/)
end
