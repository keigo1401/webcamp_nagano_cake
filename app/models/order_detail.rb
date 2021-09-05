class OrderDetail < ApplicationRecord

  belongs_to :item
  belongs_to :order

  enum making_status:{
    a: 0, #製作不可
    b: 1, #製作待ち
    c: 2, #製作中
    d: 3, #製作完了
  }

end
