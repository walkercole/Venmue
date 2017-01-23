class CreateVenuesTable < ActiveRecord::Migration[5.0]
  def change
    create_table :venues do |t|
    	t.string :address
    	t.float :latitude
    	t.float :longitude
    	t.string :venue_title
    	t.text :venue_describe
    	t.integer :user_id
    	t.attachment :avatar
    end
  end
end
