class AddColumnToVideo < ActiveRecord::Migration[5.1]
  def change
    add_column :videos, :youtube, :boolean
    add_column :videos, :facebook, :boolean
    add_column :videos, :instagram, :boolean
  end
end
