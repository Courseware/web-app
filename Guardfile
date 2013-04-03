require 'handlebars/source'
require 'ember/source'
require 'ember/data/source'
require 'handlebars_assets'

HandlebarsAssets::Config.ember = true

guard 'haml' do
  watch(/^.+(\.html\.haml)/)
end

guard 'sprockets', {
    :destination => 'assets/javascripts',
    :asset_paths => [
      'javascripts',
      File.dirname(Handlebars::Source.bundled_path),
      ::Ember::Source.bundled_path_for(''),
      ::Ember::Data::Source.bundled_path_for(''),
      ::HandlebarsAssets.path
    ],
    :root_file => 'assets/javascripts/application.js'
  } do
  watch(/^javascripts\/(.*)\.(js|coffee)/)
end

guard 'compass' do
  watch(/^sass\/(.*)\.s[ac]ss/)
end
