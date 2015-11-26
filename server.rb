require("sqlite3")
$db = SQLite3::Database.new("farm.db")
$db.results_as_hash = true
$db.type_translation = true

module App
	class Server < Sinatra::Base
		get('/') do
			sql = "SELECT * FROM locations"
      		@locations = $db.execute(sql)
			erb :index
		end#get'/'

		get('/crops/:id') do
			@id = params[:id]
			sql = "SELECT * FROM crops WHERE location='#{@id}'"      		
			@crops = $db.execute(sql)

			sql2 = "SELECT * FROM locations WHERE id='#{@id}'"
      		@location = $db.execute(sql2)
			erb :per_location
		end#get'/'

		post('/location') do
			sql = "INSERT INTO locations (name) VALUES (?)"
      		$db.execute(sql, params[:name].to_s)
			redirect to ('/')
		end#get'/'

		post('/newcrop') do
			sql = "INSERT INTO crops (name, location) VALUES (?, ?)"
      		vals = [params[:name].to_s, params[:location].to_i]
      		$db.execute(sql, vals)
			redirect back
		end#get'/'

		post('/deletecrop/:id') do
			sql = "DELETE FROM crops WHERE id = ?"
	     	if params[:delete] == "yes"
        		$db.execute(sql, params[:id])
      		end
			redirect back
		end#get'/'

	end #Server
end #App