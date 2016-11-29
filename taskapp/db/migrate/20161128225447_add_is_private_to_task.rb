class AddIsPrivateToTask < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :is_private, :boolean, :default => nil
  end
end
