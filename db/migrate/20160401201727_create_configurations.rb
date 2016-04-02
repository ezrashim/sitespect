class CreateConfigurations < ActiveRecord::Migration
  def change
    create_table :configurations do |t|
      t.string :site_name, null: false
      t.string :status, null: false
      t.string :site_url, null: false

      t.integer :variation, null: false
      t.string :default_behavior, null: false
      t.boolean :enable_detect_variation, null: false, default: false
      t.boolean :enable_AMPS, null: false, default: false
      t.boolean :enable_origin_experiements, null: false, default: false
    end
  end
end
