class AddRolesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin_role, :boolean, default: false
    add_column :users, :poet_teacher_role, :boolean, default: false
    add_column :users, :user_role, :boolean, default: true
  end
end