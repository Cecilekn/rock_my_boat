class AddColumnToBoats < ActiveRecord::Migration[5.2]
  def change
    add_column :boats, :photo_2, :string
    add_column :boats, :photo_3, :string
    add_column :boats, :photo_4, :string
    add_column :boats, :photo_5, :string
  end
end
