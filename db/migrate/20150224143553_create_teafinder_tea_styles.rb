class CreateTeafinderTeaStyles < ActiveRecord::Migration
  def change
    create_table :teafinder_tea_styles do |t|
      t.string :style

      t.timestamps
    end
  end
end
