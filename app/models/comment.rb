class Comment < ActiveRecord::Base
	belongs_to :status, :user
	
end
