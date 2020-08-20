class Users::HomesController < ApplicationController

def top
	@genres = Genre.all
	# @random = Product.order("RANDOM()").limit(4)
end


def about
end

end
