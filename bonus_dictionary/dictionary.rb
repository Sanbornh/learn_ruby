class Dictionary

	attr_accessor :entries, :keywords

	def initialize
		@entries = {}
	end

	def add(entry)
		if entry.is_a?(Hash)
			@entries = @entries.merge(entry)
		else
			@entries[entry] = nil
		end
	end

	def keywords
		@keywords = @entries.keys.sort
	end

	def include?(key)
		keywords
		if @keywords.include?(key) 
			true
		else
			false
		end
	end

	def include_partial?(entry)
		keywords
		@search_results = {}
		@keywords.each do |word| 
			if word.include? entry
				@search_results = @search_results.merge({word => @entries[word]})
			end
		end
	end

	def find(entry)
		if include?(entry)
			{ entry => @entries[entry] }
		elsif include_partial?(entry)
			@search_results 
		else 
			{}
		end
	end
end



















