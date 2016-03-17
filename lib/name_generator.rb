# You'll have to create your own method(s) here and define them. Use patterns like
# you've seen elsewhere.

require 'pry'

def myspace_name_generator(name)
	name.gsub(/\W/, '').split.map { |w| w.chars.map.with_index{ |s,i| i.even? ? s.upcase : s.downcase }.join }.join('').prepend("_xX") << "Xx_"
end
#binding.pry
# myspace_name_generator("Jeremy Patterson")