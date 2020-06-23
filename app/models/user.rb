class User < ApplicationRecord

  has_many :targets, dependent: :destroy
  has_many :post_comments, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
