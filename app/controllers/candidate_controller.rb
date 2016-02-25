class CandidateController < ApplicationController
  def index
    render json: Candidate.all
  end

  def show
    id = params["id"]
    render json: Candidate.first
  end

  def create
    name = params["name"]
    hometown = params["hometown"]
    district = params["district"]
    party = params["party"]
    Candidate.create(name: name, hometown: hometown, district: district, party: party)
  end
end
