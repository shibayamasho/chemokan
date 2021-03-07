class Emetic < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '高度(HEC)' },
    { id: 3, name: '中等度(MEC)' },
    { id: 4, name: '軽度(LEC)' },
    { id: 5, name: '最小度' },
    { id: 6, name: '不明・その他' }
  ]

  include ActiveHash::Associations
  has_many :plans
end