class Tubuyaki < ApplicationRecord
	default_scope -> { order(created_at: :desc)}
	mount_uploader :image, ImageUploader
	mount_uploader :file, AudioFileUploader
	
	belongs_to :user
	has_many :favorites, dependent: :destroy

	validates :user, presence: true
	validates :content, presence: true, length: { in: 1..140}

	# default_scope -> { order(created_at: :desc) }
	
	def favorited_by? user
     favorites.where(user_id: user.id).exists?
   end
end
