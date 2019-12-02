class AddBodyFormToPeople < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :body_form, :string
  end
end
