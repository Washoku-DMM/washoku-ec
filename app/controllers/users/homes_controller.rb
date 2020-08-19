<<<<<<< HEAD
class User::HomesController < ApplicationController
=======
class Users::HomesController < ApplicationController

def top
	@genres = Genre.all
	# @random = Product.order("RANDOM()").limit(4)
end


def about
end



>>>>>>> b0b12f333e0bd97cbdaf9a76cfdf18fc79d76657
end
