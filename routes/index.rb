get '/' do
  slim :index
end

get '/form' do
  slim :form
end

post '/form' do
  @name = params[:name]
  slim :form
end