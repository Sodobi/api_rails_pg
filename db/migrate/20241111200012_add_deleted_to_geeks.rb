class AddDeletedToGeeks < ActiveRecord::Migration[7.2]
  def change
    add_column :geeks, :deleted, :boolean
  end
end
