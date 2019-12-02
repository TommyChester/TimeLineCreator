class AddMindFormToPeople < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :mind_form, :string
  end
end
