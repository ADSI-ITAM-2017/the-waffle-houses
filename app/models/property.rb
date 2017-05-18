class Property < ApplicationRecord
	belongs_to :user

	has_many :pictures, dependent: :destroy

	def self.search(search)
  		where("title LIKE ? OR tipo LIKE ? OR colonia LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
	end

end
