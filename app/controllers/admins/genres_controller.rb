class Admins::GenresController < ApplicationController
  before_action :authenticate_admins_admin!, only: [:index, :create, :edit, :update]

  def index
    @genre = Genre.new
    @genres = Genre.all
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      redirect_to admins_genres_path, notice: "追加完了"
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
      redirect_to admins_genres_path, notice: "更新完了"
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

