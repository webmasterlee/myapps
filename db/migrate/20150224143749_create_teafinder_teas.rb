class CreateTeafinderTeas < ActiveRecord::Migration
  def change
    create_table :teafinder_teas do |t|
      t.string :name
      t.integer :display
      t.references :tea_type, index: true
      t.references :tea_style, index: true

      t.timestamps
    end
  end
end
