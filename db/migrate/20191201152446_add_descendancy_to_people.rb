class AddDescendancyToPeople < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :decendancy, :string
  end
end
