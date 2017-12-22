class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :profile_image
      t.text :statement
      t.string :artwork

      t.timestamps
    end
  end
end
