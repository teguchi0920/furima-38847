class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_presence_of :nickname, :birthday
  validates :password, presence: true, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }
  validates :first_name, :last_name, presence: true, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ }
  validates :first_name_kana, :last_name_kana, presence: true, format: { with: /\A[ァ-ヶー]+\z/ }
  
end
