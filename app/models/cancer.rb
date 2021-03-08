class Cancer < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '脳腫瘍' },
    { id: 3, name: '食道がん' },
    { id: 4, name: '胃がん' },
    { id: 5, name: '肺がん' },
    { id: 6, name: '乳がん' },
    { id: 7, name: '肝がん' },
    { id: 8, name: '膵がん' },
    { id: 9, name: '胆道がん' },
    { id: 10, name: '腎がん' },
    { id: 11, name: '結腸・直腸がん' },
    { id: 12, name: '前立腺がん' },
    { id: 13, name: '尿路上皮がん' },
    { id: 14, name: '急性骨髄性白血病' },
    { id: 15, name: '急性リンパ性白血病' },
    { id: 16, name: '慢性骨髄性白血病' },
    { id: 17, name: '慢性リンパ性白血病' },
    { id: 18, name: 'ホジキンリンパ腫' },
    { id: 19, name: '非ホジキンリンパ腫' },
    { id: 20, name: '多発性骨髄腫' },
    { id: 21, name: '骨髄異形成症候群' },
    { id: 22, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :diseases
end