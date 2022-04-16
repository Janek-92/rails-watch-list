class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update]
  def index
    @movies = Movie.all
  end

  def show
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movies_params)
    @movie.save

    redirect_to movie_path(@movie)
  end

  def edit
  end

  def update
    @movie.update(movies_params)

    redirect_to movie_path(@movie)
  end

  private

  def movies_params
    params.require(:movie).permit(:title, :overview, :poster_url, :rating)
  end

  def set_movie
    @movie = Movie.find(params[:id])
  end
end
