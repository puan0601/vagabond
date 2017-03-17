class AddAboutToLocations < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :about, :string
  end
end
