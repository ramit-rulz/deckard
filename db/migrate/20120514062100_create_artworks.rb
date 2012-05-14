class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :image
      t.integer :collection_id

      t.timestamps
    end
  end
end
