class AddUserToTeafinderTeaStyle < ActiveRecord::Migration
  def change
    add_reference :teafinder_tea_styles, :user, index: true
  end
end
