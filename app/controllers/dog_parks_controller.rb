class DogParksController < ApplicationController
  # GET /dog_parks
  # GET /dog_parks.json
  def index
    @dog_parks = DogPark.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dog_parks }
    end
  end

  # GET /dog_parks/1
  # GET /dog_parks/1.json
  def show
    @dog_park = DogPark.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dog_park }
    end
  end

  # GET /dog_parks/new
  # GET /dog_parks/new.json
  def new
    @dog_park = DogPark.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dog_park }
    end
  end

  # GET /dog_parks/1/edit
  def edit
    @dog_park = DogPark.find(params[:id])
  end

  # POST /dog_parks
  # POST /dog_parks.json
  def create
    @dog_park = DogPark.new(params[:dog_park])
    @dog_park.user_id = current_user.id
    respond_to do |format|
      if @dog_park.save
        format.html { redirect_to @dog_park, notice: 'Dog park was successfully created.' }
        format.json { render json: @dog_park, status: :created, location: @dog_park }
      else
        format.html { render action: "new" }
        format.json { render json: @dog_park.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dog_parks/1
  # PUT /dog_parks/1.json
  def update
    @dog_park = DogPark.find(params[:id])

    respond_to do |format|
      if @dog_park.update_attributes(params[:dog_park])
        format.html { redirect_to @dog_park, notice: 'Dog park was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dog_park.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dog_parks/1
  # DELETE /dog_parks/1.json
  def destroy
    @dog_park = DogPark.find(params[:id])
    @dog_park.destroy

    respond_to do |format|
      format.html { redirect_to dog_parks_url }
      format.json { head :no_content }
    end
  end
end
