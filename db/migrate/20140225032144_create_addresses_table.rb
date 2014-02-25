class CreateAddressesTable < ActiveRecord::Migration
  def change
  	create_table :addresses do |t|
  		t.string :street
  		t.string :city
  		t.string :state
  		t.string :country
  		t.integer :zip
  	end
  end
end
