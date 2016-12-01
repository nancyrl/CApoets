class AddApprovalToPoems < ActiveRecord::Migration
  def change
    add_column :poems, :approval, :string, :default => 'pending'
  end
end
