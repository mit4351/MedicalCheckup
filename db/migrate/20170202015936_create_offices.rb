class CreateOffices < ActiveRecord::Migration[5.0]
  def change
    create_table :offices do |t|
      t.string :name
      t.integer :number
      t.string :tel
      t.string :zipcode
      t.string :address
      t.string :responsibleperson
      t.boolean :deleteflg

      t.timestamps
    end
  end
end
