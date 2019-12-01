class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.references :people, foreign_key: true

      t.timestamps
    end
  end
end
