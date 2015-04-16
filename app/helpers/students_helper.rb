module StudentsHelper
	def picture(student)
		first = student.first_name.downcase
		last = student.last_name.downcase
		image_tag "#{first}_#{last}_prof.png"
	end

end
