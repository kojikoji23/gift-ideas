class Price < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '~1,000円以下' },
    { id: 3, name: '1,001円~3,000円' },
    { id: 4, name: '3,001円~5,000円' },
    { id: 5, name: '5,001円~10,000円' },
    { id: 6, name: '10,001円~30,000円' },
    { id: 7, name: '30,001円~以上' },
  ]

  include ActiveHash::Associations
  has_many :tags
  end