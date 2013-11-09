class Dashboard
	# it's ok that this model isn't inheriting from ActiveRecord bc it
	# doesn't need persistence

	def initialize(user)
		@user = user
	end

	#following 3 methods being used in dashboards#show
	#build small classes with single responsibility!!!

	def new_text_shout
		TextShout.new
	end

	def new_photo_shout
		PhotoShout.new
	end

	def timeline
		Timeline.new(@user)
	end

end