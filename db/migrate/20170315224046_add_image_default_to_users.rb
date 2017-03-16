class AddImageDefaultToUsers < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :image, :string, default: 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTVWIITeMivpUJ-xfADdqy5wxLvB0CQL9exl1FXamfHzXX4hgbCNw'
  end
end
