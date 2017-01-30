require('sinatra')
require('sinatra/reloader')
require('./lib/jo_ken_po')
also_reload('lib/**/*.rb')

get('/') do
	erb(:index)
end