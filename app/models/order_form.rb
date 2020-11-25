class OrderForm
  include ActiveModel::Model
  attr_accessor :postal_code, :prefecture_id, :city, :address, :building, :phone_number, :token, :item_id, :user_id

  with_options presence: true do
    validates :postal_code
    validates :city
    validates :address
    validates :phone_number
    validates :building
  end

  validates :postal_code, format: { with: /\A\d{3}[-]\d{4}\z/, message: 'Input correctly' }
  validates :prefecture_id, numericality: { other_than: 0, message: 'Select' }
  validates :phone_number, length: { maximum: 11, message: 'Too long' }
  validates :phone_number, numericality: { message: 'Input only number' }

  def save
    order = Order.create(user_id: user_id, item_id: item_id)
    Address.create(postal_code: postal_code, prefecture_id: prefecture_id, city: city,
                   address: address, building: building, phone_number: phone_number, order_id: order.id)
  end
end
