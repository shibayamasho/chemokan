class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.string  :name,           null: false
      t.integer :period,         null: false
      t.integer :emetic_id,      null: false
      t.string  :nk1
      t.string  :dex
      t.string  :h1blocker
      t.string  :h2blocker
      t.string  :other_medicine
      t.text    :text
      t.string  :medicine_name1, null: false
      t.string  :medicine_name2
      t.string  :medicine_name3
      t.string  :medicine_name4
      t.string  :medicine_name5
      t.string  :medicine_name6
      t.string  :medicine_name7
      t.string  :medicine_name8
      t.string  :abbreviation1,   null: false
      t.string  :abbreviation2
      t.string  :abbreviation3
      t.string  :abbreviation4
      t.string  :abbreviation5
      t.string  :abbreviation6
      t.string  :abbreviation7
      t.string  :abbreviation8
      t.float   :dose1,           null: false
      t.float   :dose2
      t.float   :dose3
      t.float   :dose4
      t.float   :dose5
      t.float   :dose6
      t.float   :dose7
      t.float   :dose8
      t.integer :unit1_id,        null: false
      t.integer :unit2_id
      t.integer :unit3_id
      t.integer :unit4_id
      t.integer :unit5_id
      t.integer :unit6_id
      t.integer :unit7_id
      t.integer :unit8_id
      t.string  :schedule1,       null: false
      t.string  :schedule2
      t.string  :schedule3
      t.string  :schedule4
      t.string  :schedule5
      t.string  :schedule6
      t.string  :schedule7
      t.string  :schedule8
      t.timestamps
    end
  end
end
