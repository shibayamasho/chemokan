class Other < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'HER2(+)' },
    { id: 3, name: 'HER2(-)' },
    { id: 4, name: 'EGFRmu(+)' },
    { id: 5, name: 'EGFRmu(-)' },
    { id: 6, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :diseases
end