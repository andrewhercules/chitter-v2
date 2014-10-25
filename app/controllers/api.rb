get '/api/peeps' do
 	
	@peeps = Peep.all 	

	@api_data = Array.new

	@peeps.each do |peep|
	
		ind_peep = Hash.new
			ind_peep["username"] = peep.user.username
			ind_peep["name"] = peep.user.name
			ind_peep["message"] = peep.message
			ind_peep["date"] = peep.date

		@api_data << ind_peep
	
	end

	@api_data.to_json

end



# Results in /api page showing <DataMapper::Query>

#  	@api_hash = {
# 		"username" => Peep.user.username,
# 		"name" => Peep.user.name,
# 		"date" => Peep.date,
# 		"message" => Peep.message,		
#  	}




# 	@api_hash.to_json
