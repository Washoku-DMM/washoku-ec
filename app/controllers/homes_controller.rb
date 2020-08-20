<<<<<<< HEAD:app/controllers/users/homes_controller.rb
class User::HomesController < ApplicationController
=======
class HomesController < ApplicationController

def top
	@genres = Genre.all
	# @random = Product.order("RANDOM()").limit(4)
end


def about
end

>>>>>>> 15183791c5575368b77c4958c8f027cce8c96eb6:app/controllers/homes_controller.rb
end
