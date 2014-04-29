activate :gzip
activate :livereload
activate :meta_tags

activate :deploy do |deploy|
  deploy.method       = :git
  deploy.branch       = 'master'
  deploy.build_before = true
end

activate :google_analytics do |ga|
  ga.tracking_id = 'UA-42477577-5'
end

set :css_dir, 'stylesheets'
set :images_dir, 'images'
set :js_dir, 'javascripts'

after_configuration do
  @bower_config = JSON.parse(IO.read("#{root}/.bowerrc"))
  sprockets.append_path File.join "#{root}", @bower_config['directory']
end

configure :build do
  activate :minify_css
  activate :minify_javascript
end
