class AddReleaseToPoems < ActiveRecord::Migration
  def change
    add_column :poems, :release, :string
  end
end
