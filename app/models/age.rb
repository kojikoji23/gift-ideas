class Age < ActiveHash::Base
  self.data = [
    { id: 1, name: '0歳' },
    { id: 2, name: '1歳' },
    { id: 3, name: '2歳' },
    { id: 4, name: '3歳' },
    { id: 5, name: '4歳' },
    { id: 6, name: '5歳' },
    { id: 7, name: '6歳' },
    { id: 8, name: '小学生' },
    { id: 9, name: '中学生' },
    { id: 10, name: '高校生' }, 
    { id: 11, name: '大学生' },
    { id: 12, name: '20代' }, 
    { id: 13, name: '30代' },
    { id: 14, name: '40代' },
    { id: 15, name: '50代' }, 
    { id: 16, name: '60代' }, 
    { id: 17, name: '70代' },
    { id: 18, name: '80代' }, 
    { id: 19, name: '90代' }
  ]

  include ActiveHash::Associations
  has_many :gifts
  end