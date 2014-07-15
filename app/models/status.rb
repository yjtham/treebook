class Status < ActiveRecord::Base
	belongs_to :user
	has_many :comments, dependent: :destroy
	validates :content, presence: true,
						length: {minimum: 2}

	validates :user_id, presence: true
end
