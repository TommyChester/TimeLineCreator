class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :name
      t.bigtext :bio
      t.relative_space_time :born

      t.timestamps
    end
  end
end
