class Other < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'HER2(+)' },
    { id: 3, name: 'HER2(-)' },
    { id: 4, name: 'EGFRmu(+)' },
    { id: 5, name: 'EGFRmu(-)' },
    { id: 6, name: 'Luminal A' },
    { id: 7, name: 'Luminal B, HER2(-)' },
    { id: 8, name: 'Luminal B, HER2(+)' },
    { id: 9, name: 'Triple Negative' },
    { id: 10, name: 'Driver Mutation(+)' },
    { id: 11, name: 'Driver Mutation(-)' },
    { id: 12, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :diseases
end