class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :address
      t.integer :phone_number

      t.timestamps
    end
  end
end
