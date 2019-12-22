class CreateEventiods < ActiveRecord::Migration[5.1]
  def change
    create_table :eventiods do |t|
      t.string :name
      t.string :description
      t.text :long_descrip

      t.timestamps
    end
  end
end
