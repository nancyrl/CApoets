class CreateCreateTags < ActiveRecord::Migration
  def change
    create_table :create_tags do |t|
      t.string :category
      t.string :status
      t.integer :number_of_hits
      t.string :description

      t.timestamps null: false
    end
  end
end
