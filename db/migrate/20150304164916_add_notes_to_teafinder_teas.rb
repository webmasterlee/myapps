class AddNotesToTeafinderTeas < ActiveRecord::Migration
  def change
    add_column :teafinder_teas, :notes, :text
  end
end
