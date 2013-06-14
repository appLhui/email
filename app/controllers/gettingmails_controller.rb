class GettingmailsController < ApplicationController
  # GET /gettingmails
  # GET /gettingmails.json
  def index
    @gettingmails = Gettingmail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gettingmails }
    end
  end

  # GET /gettingmails/1
  # GET /gettingmails/1.json
  def show
    @gettingmail = Gettingmail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gettingmail }
    end
  end

  # GET /gettingmails/new
  # GET /gettingmails/new.json
  def new
    @gettingmail = Gettingmail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gettingmail }
    end
  end

  # GET /gettingmails/1/edit
  def edit
    @gettingmail = Gettingmail.find(params[:id])
  end

  # POST /gettingmails
  # POST /gettingmails.json
  def create
    @gettingmail = Gettingmail.new(params[:gettingmail])

    respond_to do |format|
      if @gettingmail.save
        format.json { render json: @gettingmail, status: :created, location: @gettingmail }
      else
        format.json { render json: {errors: @gettingmail.errors}, status: :unprocessable_entity}
      end
    end
  end

  # PUT /gettingmails/1
  # PUT /gettingmails/1.json
  def update
    @gettingmail = Gettingmail.find(params[:id])

    respond_to do |format|
      if @gettingmail.update_attributes(params[:gettingmail])
        format.html { redirect_to @gettingmail, notice: 'Gettingmail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gettingmail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gettingmails/1
  # DELETE /gettingmails/1.json
  def destroy
    @gettingmail = Gettingmail.find(params[:id])
    @gettingmail.destroy

    respond_to do |format|
      format.html { redirect_to gettingmails_url }
      format.json { head :no_content }
    end
  end
end
