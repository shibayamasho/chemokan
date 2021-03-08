class Plan < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :emetic
  belongs_to :unit1
  belongs_to :unit2
  belongs_to :unit3
  belongs_to :unit4
  belongs_to :unit5
  belongs_to :unit6
  belongs_to :unit7
  belongs_to :unit8

  with_options presence: true do
    validates :name, uniqueness: true
    validates :period
    validates :medicine_name1
    validates :abbreviation1
    validates :dose1
    validates :schedule1
    with_options numericality: { other_than: 1 } do
      validates :emetic_id
      validates :unit1_id
    end
  end

  with_options numericality: true do
    validates :unit2_id
    validates :unit3_id
    validates :unit4_id
    validates :unit5_id
    validates :unit6_id
    validates :unit7_id
    validates :unit8_id
  end

  has_many :diseases
  # has_many :treatments
end