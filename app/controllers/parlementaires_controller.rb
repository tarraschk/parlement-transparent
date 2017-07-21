class ParlementairesController < ApplicationController

  # GET /parlementaires
  # GET /parlementaires.json
  def index
    @parlementaires = Parlementaire.all
  end

  # GET /parlementaires/1
  # GET /parlementaires/1.json
  def show
    @parlementaire = Parlementaire.find(params[:id])
  end
end