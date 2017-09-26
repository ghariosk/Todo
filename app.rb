require 'sinatra'

# sinatra listens from the 4567 port initially but this can be chagned by writing ruby app.rb -p xxxx in the terminal
# alternatively you can kill the program using the port by using lsof -i:xxxx getting the PID and using kill -9 PID

# by typing localhost:4567 we are sending a request to this address.
# but we havent programmed it yet to do something so it tells us it doesnt know what to do.


require_relative "TodoManager.rb"


# defining when the get request comes to the server do what this function returns.




get '/todos' do
	
	"INDEX"
	ToDoManager.index
end


post '/todos/:newelement' do
	"CREATE"
	element=params[:newelement]
	ToDoManager.create(element)
end


put '/todos/:id' do
	
	id=params[:id]
	update=params[:update]
	"UPDATE"
	ToDoManager.update(id.to_i,update)

end


get '/todos/:id' do #ID is a dynamic URL attribute
	id=params[:id]
	"SHOW"
	ToDoManager.show(id.to_i)
end	


delete '/todos/:id' do
	id=params[:id]
	puts id
	"DELETE" 
	ToDoManager.delete(id.to_i)
end