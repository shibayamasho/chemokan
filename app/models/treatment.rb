class Treatment < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :in_out

  with_options presence: true do
    validates :date
    validates :in_out_id, numericality: { other_than: 1 }
    with_options numericality: { only_integer: true } do
      validates :course
      validates :day
    end
    validates :mesuring_date
    validates :height
    validates :weight
  end
  
  with_options numericality: true do
    with_options allow_nil: true do
    validates :dose1
    validates :dose2
    validates :dose3
    validates :dose4
    validates :dose5
    validates :dose6
    validates :dose7
    validates :dose8
    end
    validates :height
    validates :weight
  end

  belongs_to :disease
  belongs_to :plan
  belongs_to :patient
end
