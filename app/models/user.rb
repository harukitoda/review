class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :items
  has_many :orders

  with_options presence: true do
    validates :nickname
    validates :first_name
    validates :last_name
    validates :first_name_kana
    validates :last_name_kana
    validates :birthday
  end

  validates :first_name, :last_name, format: { with: /\A[ぁ-んァ-ンー-龥]+\z/ }
  validates :first_name_kana, :last_name_kana, format: { with: /\A[ァ-ヶーー]+\z/ }
end
