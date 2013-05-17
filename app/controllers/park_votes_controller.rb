class ParkVotesController < ApplicationController
  # GET /park_votes
  # GET /park_votes.json
  def index
    @park_votes = ParkVote.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @park_votes }
    end
  end

  # GET /park_votes/1
  # GET /park_votes/1.json
  def show
    @park_vote = ParkVote.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @park_vote }
    end
  end

  # GET /park_votes/new
  # GET /park_votes/new.json
  def new
    @park_vote = ParkVote.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @park_vote }
    end
  end

  # GET /park_votes/1/edit
  def edit
    @park_vote = ParkVote.find(params[:id])
  end

  # POST /park_votes
  # POST /park_votes.json
  def create
    @park_vote = ParkVote.new(params[:park_vote])
    @park_vote.user_id = current_user.id
    respond_to do |format|
      if @park_vote.save
        format.html { redirect_to @park_vote, notice: 'Park vote was successfully created.' }
        format.json { render json: @park_vote, status: :created, location: @park_vote }
      else
        format.html { render action: "new" }
        format.json { render json: @park_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /park_votes/1
  # PUT /park_votes/1.json
  def update
    @park_vote = ParkVote.find(params[:id])

    respond_to do |format|
      if @park_vote.update_attributes(params[:park_vote])
        format.html { redirect_to @park_vote, notice: 'Park vote was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @park_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /park_votes/1
  # DELETE /park_votes/1.json
  def destroy
    @park_vote = ParkVote.find(params[:id])
    @park_vote.destroy

    respond_to do |format|
      format.html { redirect_to park_votes_url }
      format.json { head :no_content }
    end
  end
end
