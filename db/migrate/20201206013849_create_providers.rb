class CreateProviders < ActiveRecord::Migration[6.0]
  def change
    create_table :providers do |t|
      t.string :name
      t.string :password_digest
      t.string :email
      t.integer :phone
      t.integer :license_number

      t.timestamps
    end
  end
end
