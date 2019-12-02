class AddPhysicalityToRelativeTimeSpace < ActiveRecord::Migration[5.1]
  def change
    add_column :relative_time_spaces, :physicality, :string
  end
end
