class CreateRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :relationships do |t|
      t.integer :number
      t.string :name

      t.timestamps
    end
  end
end
