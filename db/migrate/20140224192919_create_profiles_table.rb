class CreateProfilesTable < ActiveRecord::Migration
  def change
  	create_table :profiles do |t|
  		t.string :gender
  		t.string :birthday
  		t.string :religion
  		t.string :status
  		t.integer :user_id
  	end
  end
end
