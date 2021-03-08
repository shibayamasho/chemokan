class CreateDiseases < ActiveRecord::Migration[6.0]
  def change
    create_table :diseases do |t|
      t.integer :cancer_id,  null: false
      t.integer :other_id,   null: false
      t.integer :purpose_id, null: false
      t.references :plan, null: false, foreign_key: true
      t.timestamps
    end
  end
end
