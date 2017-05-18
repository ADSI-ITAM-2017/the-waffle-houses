class Search < ApplicationRecord

	def search_properties
		properties = Property.all

		properties = properties.where(["title LIKE ?","%#{keywords}%"]) if keywords.present?
		properties = properties.where(["tipo LIKE ?", tipo]) if tipo.present?
		properties = properties.where(["cost >= ?", min_price]) if min_price.present?
		properties = properties.where(["cost <= ?", max_price]) if min_price.present?

		return properties
end
end
