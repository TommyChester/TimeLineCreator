class AddPeopleToEvent < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :people, :has_many
  end
end
