class CreateExaminees < ActiveRecord::Migration[5.0]
  def change
    create_table :examinees do |t|
      t.integer :number
      t.string :name
      t.integer :relationship
      t.integer :sex
      t.string :tel
      t.string :zipcode
      t.string :address
      t.date :implementation_period
      t.text :remarks
      t.boolean :deleteflg, default: false
      t.references :office, foreign_key: true
      t.references :medical, foreign_key: true

      t.timestamps
    end
  end
end
