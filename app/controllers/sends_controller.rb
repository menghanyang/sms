class SendsController < ApplicationController
  # GET /sends
  # GET /sends.json
  def index
    @sends = Send.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sends }
    end
  end

  # GET /sends/1
  # GET /sends/1.json
  def show
    @send = Send.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @send }
    end
  end

  # GET /sends/new
  # GET /sends/new.json
  def new
    @send = Send.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @send }
    end
  end

  # GET /sends/1/edit
  def edit
    @send = Send.find(params[:id])
  end

  # POST /sends
  # POST /sends.json
  def create
    @send = Send.new(params[:send])

    respond_to do |format|
      if @send.save
        format.html { redirect_to @send, notice: 'Send was successfully created.' }
        format.json { render json: @send, status: :created, location: @send }
      else
        format.html { render action: "new" }
        format.json { render json: @send.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sends/1
  # PUT /sends/1.json
  def update
    @send = Send.find(params[:id])

    respond_to do |format|
      if @send.update_attributes(params[:send])
        format.html { redirect_to @send, notice: 'Send was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @send.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sends/1
  # DELETE /sends/1.json
  def destroy
    @send = Send.find(params[:id])
    @send.destroy

    respond_to do |format|
      format.html { redirect_to sends_url }
      format.json { head :no_content }
    end
  end
end
