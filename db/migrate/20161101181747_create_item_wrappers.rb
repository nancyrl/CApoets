class CreateItemWrappers < ActiveRecord::Migration
  def change
    create_table :item_wrappers do |t|

      t.timestamps null: false
    end
  end
end
