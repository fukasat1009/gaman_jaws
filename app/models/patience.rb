class Patience < ApplicationRecord
	belongs_to :target
	validates :price, presence: true
	validates :name, presence: true
end
