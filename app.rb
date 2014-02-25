require "sinatra"
require "sinatra/activerecord"

set :database, "sqlite3:///class12.sqlite3"

require "./models"

get "/" do
	@user_one = User.find(1)
	@profile_one = User.find(1).profile
	@room_first = User.find(1).rooms.first
	erb :home
end 

get "/posts" do
	@post_first = User.find(1).posts.first
	@post_second = User.find(1).posts.second
	erb :posts
end

get "/addresses" do
	@address_first = User.find(1).addresses.first
	@address_second = User.find(1).addresses.second
	erb :addresses
end

get "/rooms" do
	@rooms_first = User.find(1).rooms.first
	erb :rooms
end