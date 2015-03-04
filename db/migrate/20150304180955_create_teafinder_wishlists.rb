class CreateTeafinderWishlists < ActiveRecord::Migration
  def change
    create_table :teafinder_wishlists do |t|
      t.string :name
      t.text :notes
      t.string :url

      t.timestamps
    end
  end
end
