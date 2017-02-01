require('capybara/rspec')
require('./app')
require('launchy')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the jokenpo case path', {:type => :feature}) do
	it('processes the user entry and valuates the jokenpo game') do
		visit('/')
		click_button('rock')
		expect(page).to have_content('Retry')
	end
end