class Listing < ApplicationRecord
	has_attached_file :image, styles: { medium: "200x>", thumb: "100x100>" }, default_url: "default.jpg"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

	validates :name, :description, :price, presence: true
	validates :price, numericality: {greater_than: 0}
	validates_attachment_presence :image
	belongs_to :user
	has_many :orders
	has_many :sales, class_name: "Order", foreign_key: "seller_id"
	has_many :purchases, class_name: "Order", foreign_key: "buyer_id"
end
