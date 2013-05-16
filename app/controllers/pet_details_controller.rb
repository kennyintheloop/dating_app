class PetDetailsController < ApplicationController
  # GET /pet_details
  # GET /pet_details.json
  def index
    @pet_details = PetDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pet_details }
    end
  end

  # GET /pet_details/1
  # GET /pet_details/1.json
  def show
    @pet_detail = PetDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pet_detail }
    end
  end

  # GET /pet_details/new
  # GET /pet_details/new.json
  def new
    @pet_detail = PetDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pet_detail }
    end
  end

  # GET /pet_details/1/edit
  def edit
    @pet_detail = PetDetail.find(params[:id])
  end

  # POST /pet_details
  # POST /pet_details.json
  def create
    @pet_detail = PetDetail.new(params[:pet_detail])

    respond_to do |format|
      if @pet_detail.save
        format.html { redirect_to @pet_detail, notice: 'Pet detail was successfully created.' }
        format.json { render json: @pet_detail, status: :created, location: @pet_detail }
      else
        format.html { render action: "new" }
        format.json { render json: @pet_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pet_details/1
  # PUT /pet_details/1.json
  def update
    @pet_detail = PetDetail.find(params[:id])

    respond_to do |format|
      if @pet_detail.update_attributes(params[:pet_detail])
        format.html { redirect_to @pet_detail, notice: 'Pet detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pet_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pet_details/1
  # DELETE /pet_details/1.json
  def destroy
    @pet_detail = PetDetail.find(params[:id])
    @pet_detail.destroy

    respond_to do |format|
      format.html { redirect_to pet_details_url }
      format.json { head :no_content }
    end
  end
end
