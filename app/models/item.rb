class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_one_attached :image
  belongs_to :user
  has_one :order

  belongs_to_active_hash :category
  belongs_to_active_hash :status
  belongs_to_active_hash :fee
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :schedule

  with_options presence: true do
    validates :image
    validates :name
    validates :explanation
    validates :price
  end

  with_options numericality: { other_than: 0, message: 'Select' } do
    validates :category_id
    validates :status_id
    validates :fee_id
    validates :prefecture_id
    validates :schedule_id
  end

  validates :price, numericality: { with: /\A[0-9]+\z/, message: 'Half-width number' }
end

