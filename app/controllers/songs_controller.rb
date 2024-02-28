class SongsController < ApplicationController
  before_action :set_song, only: %i[show edit update]
  def search
    # @songs = Song.where(title: params[:query])
    @songs = Song.where(title: params[:name])
  end

  def index
    @songs = Song.all
  end

  def show; end

  def new
    @song = Song.new
  end

  def edit; end

  def update
    if @song.update(song_params)
      redirect_to song_path(@song)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      redirect_to song_path(@song)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def song_params
    params.require(:song).permit(:title, :category, :year)
  end

  def set_song
    @song = Song.find(params[:id])
  end
end
