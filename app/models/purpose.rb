class Purpose < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '術後補助化学療法' },
    { id: 3, name: '術前化学療法' },
    { id: 4, name: '切除不能の進行・再発がん' },
    { id: 5, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :diseases
end