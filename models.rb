class User < ActiveRecord::Base
	has_one :profile
	has_many :posts
	has_many :user_rooms
	has_many :rooms, through: :user_rooms
	has_many :user_addresses
	has_many :addresses, through: :user_addresses
end

class Profile < ActiveRecord::Base
	has_one :user
end

class Post < ActiveRecord::Base
	belongs_to :user
end

class Room < ActiveRecord::Base
	has_many :user_rooms
	has_many :users, through: :user_rooms
end

class UserRoom < ActiveRecord::Base
	belongs_to :user
	belongs_to :room
end

class Address < ActiveRecord::Base
	has_many :user_addresses
	has_many :users, through: :user_addresses
end

class UserAddress < ActiveRecord::Base
	belongs_to :user
	belongs_to :address
end