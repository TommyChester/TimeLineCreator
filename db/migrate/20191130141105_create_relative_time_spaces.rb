class CreateRelativeTimeSpaces < ActiveRecord::Migration[5.1]
  def change
    create_table :relative_time_spaces do |t|
      t.string :epoch
      t.bigint :epochtime

      t.timestamps
    end
  end
end
