class Dictionary

	attr_accessor :entries, :keywords

	def initialize
		@entries = {}
		# @keywords = []
	end

	def add(entry)
		if entry.is_a?(Hash)
			@entries = @entries.merge(entry)
		else
			@entries[entry] = nil
		end
	end

	def keywords
		@keywords = @entries.keys
	end

	def include?(key)
		keywords
		if @keywords.include?(key) 
			true
		else
			false
		end
	end
end