class AddSchoolToPoems < ActiveRecord::Migration
  def change
    add_column :poems, :school, :string
  end
end
