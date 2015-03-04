class CreateTeafinderTeaTypes < ActiveRecord::Migration
  def change
    create_table :teafinder_tea_types do |t|
      t.string :type_name

      t.timestamps
    end
  end
end
