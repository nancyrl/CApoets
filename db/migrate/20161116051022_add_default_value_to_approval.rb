class AddDefaultValueToApproval < ActiveRecord::Migration
  def change
    change_column_default(:poems, :approval, 'pending')
  end

end
