class CreatePictures < ActiveRecord::Migration[6.1]
  def change
    create_table :pictures do |t|
      t.string :image_url
      t.string :title
      t.string :artist
      t.string :date
      t.string :description

      t.timestamps
    end
  end
end
