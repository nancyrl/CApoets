class AddTimeStampsToPoem < ActiveRecord::Migration
  def change
      add_column(:poems, :created_at, :datetime)
      add_column(:poems, :updated_at, :datetime)
  end
end
