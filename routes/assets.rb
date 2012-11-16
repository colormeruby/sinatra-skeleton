# Configure Sprockets
set :assets, Sprockets::Environment.new
settings.assets.append_path "assets/javascripts"
settings.assets.append_path "assets/stylesheets"

# Compressed Output


# Stylesheets
get "/stylesheets/:file.css" do
  content_type "text/css"
  settings.assets["#{params[:file]}.css"]
end

# Javascripts
get "/javascripts/:file.js" do
  content_type "application/javascript"
  settings.assets["#{params[:file]}.js"]
end

# Images
