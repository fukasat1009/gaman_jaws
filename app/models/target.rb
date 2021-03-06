class Target < ApplicationRecord

	belongs_to :user
	has_many :patiences, dependent: :destroy
	has_many :post_comments, dependent: :destroy
	has_many :favorites, dependent: :destroy
	validates :title, presence: true
	validates :price, presence: true

	enum target_status:{'Topicに設定':0,'Topicに表示しない':1}
    attribute :target_status, :integer, default: 0


  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
