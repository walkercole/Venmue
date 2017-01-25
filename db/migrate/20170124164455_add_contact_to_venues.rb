class AddContactToVenues < ActiveRecord::Migration[5.0]
  def change
    add_column :venues, :contact, :string
  end
end
