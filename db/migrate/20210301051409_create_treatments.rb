class CreateTreatments < ActiveRecord::Migration[6.0]
  def change
    create_table :treatments do |t|
      t.date :date, null: false
      t.integer :in_out_id, null: false
      # t.references :patient_id, null: false, foreign_key: true
      # t.references :disease_id, null: false, foreign_key: true
      # t.references :regimen_id, null: false, foreign_key: true
      t.integer :course, null: false
      t.integer :day, null: false
      t.date :mesuring_date, null: false
      t.float :height, null: false
      t.float :weight, null: false
      t.float :dose1
      t.float :dose2
      t.float :dose3
      t.float :dose4
      t.float :dose5
      t.float :dose6
      t.float :dose7
      t.float :dose8
      t.string :nk1
      t.string :dex
      t.string :h1blocker
      t.string :h2blocker
      t.string :other_medicine
      t.text :text
      t.timestamps
    end
  end
end
