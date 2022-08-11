class Scene < ActiveHash::Base
  self.data = [
    { id: 1, name: '誕生日' },
    { id: 2, name: '結婚祝い' },
    { id: 3, name: '出産祝い' },
    { id: 4, name: '内祝い' },
    { id: 5, name: '新築・引っ越し' },
    { id: 6, name: '還暦' },
    { id: 7, name: '入学・卒業' },
    { id: 8, name: '結婚記念日' },
    { id: 9, name: 'プチギフト' }
  ]

  include ActiveHash::Associations
  has_many :gifts
  end