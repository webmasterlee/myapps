class AddUserToTeafinderTea < ActiveRecord::Migration
  def change
    add_reference :teafinder_teas, :user, index: true
  end
end
