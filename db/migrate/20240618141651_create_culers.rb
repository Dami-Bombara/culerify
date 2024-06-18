class CreateCulers < ActiveRecord::Migration[7.1]
  def change
    create_table :culers do |t|
      t.string :name
      t.integer :age
      t.string :country
      t.string :position
      t.integer :kit_number

      t.timestamps
    end
  end
end
