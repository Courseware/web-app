require 'handlebars/source'
require 'ember/source'
require 'ember/data/source'

guard 'haml' do
  watch(/^.+(\.html\.haml)/)
end

guard 'sprockets', {
    :destination => 'assets/javascripts',
    :asset_paths => [
      'javascripts',
      File.dirname(Handlebars::Source.bundled_path),
      ::Ember::Source.bundled_path_for(''),
      ::Ember::Data::Source.bundled_path_for('')
    ],
  } do
  watch 'javascripts/application.js'
end

guard 'compass' do
  watch(/^sass\/(.*)\.s[ac]ss/)
end
