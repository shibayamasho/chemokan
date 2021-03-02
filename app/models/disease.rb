class Disease < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  with_options presence: true, numericality: { other_than: 1 } do
    validates :cancer_id
    validates :other_id
    validates :purpose_id
  end

  # has_many :regimens, through: disease_regimens
  # has_many :treatments
end
