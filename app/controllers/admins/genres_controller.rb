<<<<<<< HEAD
class Admin::GenresController < ApplicationController
end
=======
class Admins::GenresController < ApplicationController

  def index
    @genre = Genre.new
    @genres = Genre.all
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      redirect_to admins_genres_path
      else
        @genres = Genre.all
        render 'index'
    end
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    if @genre.update(genre_params)
      redirect_to genres_path
      else
        @genre = Genre.find(params[:id])
        render 'edit'
    end
  end

private
  def genre_params
    params.require(:genre).permit(:name, :is_active)
  end


end

>>>>>>> b0b12f333e0bd97cbdaf9a76cfdf18fc79d76657
