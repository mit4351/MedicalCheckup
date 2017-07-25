class CreateInspectionitems < ActiveRecord::Migration[5.0]
  def change
    create_table :inspectionitems do |t|
      t.integer :number
      t.string :name
      t.integer :amountofmone
      t.integer :subsidy
      t.text :remarks
      t.boolean :hospitalflg
      t.boolean :deleteflg

      t.timestamps
    end
  end
end
