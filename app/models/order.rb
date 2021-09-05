class Order < ApplicationRecord
  
  belongs_to :customer
  has_many :order_details
  
  enum payment_method:{ 
    credit: 0, #クレジットカード
    bank: 1, #銀行振込
  }
  
  enum status:{
    a: 0, #入金待ち
    b: 1, #入金確認
    c: 2, #製作中
    d: 3, #発送準備中
    e: 4, #発送済み
  }
  
end
