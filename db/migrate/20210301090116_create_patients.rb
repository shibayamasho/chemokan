class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string  :name,      null: false
      t.integer :gender_id, null: false
      t.date    :birthday,  null: false
      t.text    :text
      t.timestamps
    end
  end
end
