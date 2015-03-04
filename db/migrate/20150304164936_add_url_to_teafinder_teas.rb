class AddUrlToTeafinderTeas < ActiveRecord::Migration
  def change
    add_column :teafinder_teas, :url, :string
  end
end
