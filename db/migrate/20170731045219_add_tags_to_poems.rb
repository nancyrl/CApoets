class AddTagsToPoems < ActiveRecord::Migration
  def change
    add_column :poems, :list_of_tags, :string
  end
end
