class Patient < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :gender

  with_options presence: true do
    NAME_REGEX = /\A[A-Z]+\z/
    validates :name, format: { with: NAME_REGEX }
    validates :gender_id, numericality: { other_than: 1 }
    validates :birthday
  end
end
