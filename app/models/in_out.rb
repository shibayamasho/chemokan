class InOut < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '入院' },
    { id: 3, name: '外来' },
    { id: 4, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :treatments
end