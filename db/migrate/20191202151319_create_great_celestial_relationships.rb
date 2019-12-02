class CreateGreatCelestialRelationships < ActiveRecord::Migration[5.1]
  def change
    create_table :great_celestial_relationships do |t|
      t.string :supercluster
      t.string :cluster
      t.string :galaxy
      t.string :arm
      t.float :distance_from_end_star_log
      t.float :distance_from_glactic_core_log
      t.float :angle_north_south_rad
      t.float :angle_east_west

      t.timestamps
    end
  end
end
