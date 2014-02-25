class CreateRoomsTable < ActiveRecord::Migration
  def change
  	create_table :rooms do |t|
  		t.integer :number
  		t.integer :floor
  		t.boolean :suite
  	end
  end
end
