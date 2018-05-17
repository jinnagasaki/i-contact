class Favorite < ApplicationRecord
	belongs_to :user
	belongs_to :tubuyaki

	validates :user, presence: true
	validates :user_id, uniqueness: { scope: :tubuyaki_id }
	validates :tubuyaki, presence: true
end
