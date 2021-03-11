class Treatment < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :in_out

  with_options presence: true do
    validates :date
    validates :in_out_id, numericality: { other_than: 1 }
    with_options numericality: true do
      validates :course
      validates :day
    end
    validates :mesuring_date
    validates :height
    validates :weight
  end
  
  belongs_to :disease
  belongs_to :plan
  belongs_to :patient
end
