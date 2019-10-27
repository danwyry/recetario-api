class CreateRates < ActiveRecord::Migration[6.0]
  def change
    create_table :rates do |t|
      t.string :description
      t.integer :value
      t.references :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
