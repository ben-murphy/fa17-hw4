class Cat < ApplicationRecord
	def meow
		p "meow"
	end
	
	def create
		cat = Cat.new(name: params[:cat][:name])
		cat.save!

		redirect_to root
	end

end
