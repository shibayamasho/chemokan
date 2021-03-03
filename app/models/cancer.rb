class Cancer < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '脳腫瘍' },
    { id: 3, name: '食道がん' },
    { id: 4, name: '胃がん' }
    { id: 5, name: '肺がん' }
    { id: 6, name: '乳がん' }
    { id: 7, name: '肝がん' }
    { id: 8, name: '膵がん' }
    { id: 9, name: '胆道がん' }
    { id: 10, name: '腎がん' }
    { id: 11, name: '結腸・直腸がん' }
    { id: 12, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :diseases
end