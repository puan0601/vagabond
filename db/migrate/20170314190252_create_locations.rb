class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :image, presence: true
      t.string :name, uniqueness: true, presence: true
      t.string :state, presence: true
      t.string :country, presence: true

      t.timestamps
    end
  end
end
