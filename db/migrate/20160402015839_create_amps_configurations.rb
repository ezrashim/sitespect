class CreateAmpsConfigurations < ActiveRecord::Migration
  def change
    create_table :amps_configurations do |t|
      t.string :AMPS_config, null: false
      t.belongs_to :configuration, index: true, null: false
    end
  end
end
