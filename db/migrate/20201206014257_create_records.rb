class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.references :patient, null: false, foreign_key: true
      t.references :provider, null: false, foreign_key: true
      t.string :location
      t.datetime :booster_date
      t.boolean :second_shot
      t.integer :first_shot_record_id

      t.timestamps
    end
  end
end
