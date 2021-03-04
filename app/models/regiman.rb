class Regiman < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :emetic
  belongs_to :unit

  with_options presence: true do
    validates :name, uniqueness: true
    validates :period
    validates :medicinen_name1
    validates :abbreviation1
    validates :dose1
    validates :schedule1
    with_options numericality: { other_than: 1 } do
      validates :emetic_id
      validates :unit_id1
    end
  end

  with_options numericality: { other_than: 1 } do
    validates :unit_id2
    validates :unit_id3
    validates :unit_id4
    validates :unit_id5
    validates :unit_id6
    validates :unit_id7
    validates :unit_id8
  end

  # has_many :diseases, through: disease_regimens
  # has_many :treatments
end