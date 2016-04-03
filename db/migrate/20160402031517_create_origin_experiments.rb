class CreateOriginExperiments < ActiveRecord::Migration
  def change
    create_table :origin_experiments do |t|
      t.string :campaign_delimiter, null: false
      t.string :factor_delimiter, null: false
      t.belongs_to :basic_configuration, index: true, null: false
    end
  end
end
