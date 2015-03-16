class AddUserToTeafinderTeaType < ActiveRecord::Migration
  def change
    add_reference :teafinder_tea_types, :user, index: true
  end
end
