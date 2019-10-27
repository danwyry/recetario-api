class CreateUnits < ActiveRecord::Migration[6.0]
  def change
    create_table :units do |t|
      t.string :name
      t.string :meassure
      t.float :equivalence

      t.timestamps
    end
  end
end
