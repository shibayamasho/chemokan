class Unit1 < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'mg/㎡' },
    { id: 3, name: 'mg/kg' },
    { id: 4, name: 'mg/body' },
    { id: 5, name: 'μg/body' },
    { id: 6, name: 'AUC' },
    { id: 7, name: 'UI/㎡' },
    { id: 8, name: 'KE/body' }
  ]

  include ActiveHash::Associations
  has_many :plans
end