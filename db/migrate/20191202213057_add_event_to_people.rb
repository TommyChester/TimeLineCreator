class AddEventToPeople < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :event, :has_many
  end
end
