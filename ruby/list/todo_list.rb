class TodoList

	def initialize(list) 
		@list = list
	end

	def get_items
	  @list
	end

	def add_item(x)
	  @list << x
	end

	def delete_item(x)
		@list.delete(x)
	end

	def get_item(i)
		@list[i]
	end

end


