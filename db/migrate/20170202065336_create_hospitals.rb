class CreateHospitals < ActiveRecord::Migration[5.0]
  def change
    create_table :hospitals do |t|
      t.integer :number
      t.string :name
      t.string :dayoftheweek
      t.string :tel
      t.string :zipcode
      t.string :address
      t.boolean :jcbflg
      t.text :remarks
      t.boolean :deleteflg

      t.timestamps
    end
  end
end
