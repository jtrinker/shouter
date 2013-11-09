class Timeline
	extend ActiveModel::Naming
	# creates a valid ActiveModel compliant object that returns a valid partial path
	# the non-database functionality of Active Record is extracted out into Active Model. 
	# This allows you to cleanly add validations and other features to tableless models.

	def initialize(user)
		@user = user
	end

end