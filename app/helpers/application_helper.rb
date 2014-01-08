module ApplicationHelper
	def get_list(collection)
		if collection.blank?
			'-'
		else
			list = []
			collection.each do |item|
				list << item.name
			end
			list.join(', ')
		end
	end
end
