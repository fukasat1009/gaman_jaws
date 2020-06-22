class Target < ApplicationRecord

	belongs_to :user
	has_many :patiences, dependent: :destroy
end
