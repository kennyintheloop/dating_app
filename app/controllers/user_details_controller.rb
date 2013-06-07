class UserDetailsController < ApplicationController
  #authorized_signed_in for giving right granted accesses to the users
  #Make sure that users are signed in before adding, deleting or editing
  before_filter :authorize_user, only: [:edit, :update, :destroy]
  before_filter :authorized_signed_in, only: [:new,:create,:edit, :update, :destroy]
  def authorized_signed_in
    if not current_user.present?
      redirect_to '/auth/facebook'
    end
  end
  def authorize_user
    user_detail = UserDetail.find(params[:id])

    if user_detail.user_id != current_user.id
      redirect_to edit_user_detail_url, notice: "Something went wrong."
    end
  end
  # GET /user_details
  # GET /user_details.json
  def index
    #@user_details = UserDetail.all
    require 'open-uri'
    require 'json'
    @weatherurl = open('http://api.worldweatheronline.com/free/v1/weather.ashx?q=Chicago&format=json&num_of_days=5&key=kfk3bcmywtmy9p9qetk3yfey').read
    @json = JSON.parse(@weatherurl)
    if current_user.present?
      @my_user = UserDetail.where("user_id = ?", current_user.id)
    end

    @user_details = UserDetail.all
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @user_details }
      end
  end

  # GET /user_details/1
  # GET /user_details/1.json
  def show
    @user_detail = UserDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_detail }
    end
  end

  # GET /user_details/new
  # GET /user_details/new.json
  def new
    @user_detail = UserDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_detail }
    end
  end

  # GET /user_details/1/edit
  def edit
    @user_detail = UserDetail.find(params[:id])
  end

  # POST /user_details
  # POST /user_details.json
  def create
    @user_detail = UserDetail.new(params[:user_detail])
    @user_detail.user_id = current_user.id
    respond_to do |format|
      if @user_detail.save
        format.html { redirect_to @user_detail, notice: 'User detail was successfully created.' }
        format.json { render json: @user_detail, status: :created, location: @user_detail }
      else
        format.html { render action: "new" }
        format.json { render json: @user_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_details/1
  # PUT /user_details/1.json
  def update
    @user_detail = UserDetail.find(params[:id])

    respond_to do |format|
      if @user_detail.update_attributes(params[:user_detail])
        format.html { redirect_to @user_detail, notice: 'User detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_details/1
  # DELETE /user_details/1.json
  def destroy
    @user_detail = UserDetail.find(params[:id])
    @user_detail.destroy

    respond_to do |format|
      format.html { redirect_to user_details_url }
      format.json { head :no_content }
    end
  end
end
