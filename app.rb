require('sinatra')
require('sinatra/reloader')
require('./lib/jo_ken_po')
also_reload('lib/**/*.rb')

get('/') do
	erb(:index)
end

get('/jokenpo') do
	@game = params.fetch('game').jo_ken_po()
	@computer_choice = @game.at(0)
	@user_choice = @game.at(1)
	@game_result = @game.at(2)

	erb(:jokenpo)
end

