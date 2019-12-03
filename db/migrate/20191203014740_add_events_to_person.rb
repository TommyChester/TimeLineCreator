class AddEventsToPerson < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :events, :has_many
  end
end
