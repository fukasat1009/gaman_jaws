class Target < ApplicationRecord

	belongs_to :user
	has_many :patiences, dependent: :destroy
	has_many :post_comments, dependent: :destroy
end
