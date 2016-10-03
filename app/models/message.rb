class Message < ActiveRecord::Base
  # 名前は必須入力かつ20文字以内
  validates :name , length: { maximum: 20 } , presence: true
  # 内容は必須入力かつ2文字以上30文字以下
  validates :body , length: { minimum: 2, maximum: 30 } , presence: true
  # 年齢は必須入力かつ0以上の整数数値のみ
  validates :age , length: { minimum: 0 } , numericality: { only_integer: true } , presence: true
end