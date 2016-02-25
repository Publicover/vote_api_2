class VoteController < ApplicationController
  def index
    render json: Vote.all
  end

  def show
    id = params["id"]
    render json: Vote.first
  end

  def create
    Vote.create
  end

  def cast_vote
    if params["token"] == true
      token = params["token"]
      render json: Vote.joins(:candidate_id)
    else
      render json: "Invalid token."
    end
  end
end
