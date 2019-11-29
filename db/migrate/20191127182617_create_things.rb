class CreateThings < ActiveRecord::Migration[5.1]
  def change
    create_table :things do |t|
      t.string :what_is_it
      t.text :about

      t.timestamps
    end
  end
end
