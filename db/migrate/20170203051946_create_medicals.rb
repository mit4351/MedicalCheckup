class CreateMedicals < ActiveRecord::Migration[5.0]
  def change
    create_table :medicals do |t|
      t.string :name
      t.date :str_application_period
      t.date :end_application_period
      t.date :str_implementation_period
      t.date :end_implementation_period
      t.text :remarks
      t.boolean :deleteflg

      t.timestamps
    end
  end
end
