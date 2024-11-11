class AddDeletedToApplies < ActiveRecord::Migration[7.2]
  def change
    add_column :applies, :deleted, :boolean
  end
end
