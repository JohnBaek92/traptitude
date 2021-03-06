class Api::TracksController < ApplicationController
  def index
    @tracks = Track.all.shuffle.take(10)
    render "/api/tracks/index"
  end

  def show
    @track = Track.find(params[:id])

    if @track
      render "api/tracks/show"
    else
      render json: @track.errors.full_essages, status: 422
    end
  end

  def create
    @track = Track.new(track_params)
    if @track.save
      render "api/tracks/show"
    else
      render json: @track.errors.full_messages, status: 422
    end
  end

  def track_params
    params.require(:track).permit(
      :album_id, :features, :producer, :lyrics, :title
    )
  end
end
