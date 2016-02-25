class VoterController < ApplicationController
  def index
    render json: Voter.all
  end

  def show
    if params["token"] == true
      token = params["token"]
      render json: Voter.first
    else
      render json: "Invalid token."
    end
  end

  def create
    name = params["name"]
    party = params["party"]
    token = params["token"]
    Voter.create(name: name, party: party, token: token)
  end

  def update
    if params["token"] == true
      token = params["token"]
      render json: Voter.find(:id)
    else
      render json: "Invalid token."
    end
  end
end
