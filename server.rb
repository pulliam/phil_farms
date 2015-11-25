require("sqlite3")
$db = SQLite3::Database.new("farm.db")
$db.results_as_hash = true
$db.type_translation = true

module App
	class Server < Sinatra::Base
		get('/') do
			erb :index
		end#get'/'

		get('/:id') do
			erb :per_location
		end#get'/'

		post('/location') do
			redirect to ('')
		end#get'/'

		post('/crop') do
			redirect to ('')
		end#get'/'
	end #Server
end #App