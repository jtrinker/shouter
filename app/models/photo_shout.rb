class PhotoShout < ActiveRecord::Base
	has_attached_file :image, styles: {
		shout: "200x200>"
		# takes largest out of width or height, makes it 200px
		# then scales accordingly
	}
end
