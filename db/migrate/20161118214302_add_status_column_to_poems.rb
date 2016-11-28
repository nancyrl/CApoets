class AddStatusColumnToPoems < ActiveRecord::Migration
  def change
    add_column :poems, :status, :string
  end
end
