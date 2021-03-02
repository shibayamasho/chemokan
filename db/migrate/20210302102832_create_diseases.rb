class CreateDiseases < ActiveRecord::Migration[6.0]
  def change
    create_table :diseases do |t|
      t.integer :cancer_id,  null: false
      t.integer :other_id,   null: false
      t.integer :purpose_id, null: false
      t.timestamps
    end
  end
end
