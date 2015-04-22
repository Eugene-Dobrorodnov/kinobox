class FilmsController < ApplicationController

  PER_PAGE = 5

  def index
    @films = Film.all.paginate(page: params[:page], per_page: PER_PAGE)
  end

  def show
    @film = Film.find(params[:id])
  end

  def new
    @film = Film.new
  end

  def create
    @film = Film.new(film_params)

    if @film.save
      redirect_to @film
    else
      render 'new'
    end
  end

  def edit
    @film = Film.find(params[:id])
  end

  def update
    @film = Film.find(params[:id])

    if @film.update(film_params)
      redirect_to @film
    else
      render 'edit'
    end
  end

  def destroy
    @film = Film.find(params[:id])
    @film.destroy
  end

  private
  def film_params
    params.require(:film).permit(*Film.attribute_names)
  end
end
