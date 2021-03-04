class Disease < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :cancer
  belongs_to :other
  belongs_to :purpose

  with_options presence: true do
    with_options numericality: { other_than: 1 } do
    validates :cancer_id
    validates :purpose_id
    end
    validates :other_id, numericality: true
  end

  # has_many :plans, through: disease_plans
  # has_many :treatments
end
