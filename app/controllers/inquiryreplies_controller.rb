class InquiryrepliesController < ApplicationController
  before_action :set_inquiryreply, only: [:show, :edit, :update, :destroy]

  # GET /inquiryreplies
  # GET /inquiryreplies.json
  def index
    @inquiryreplies = Inquiryreply.all
  end

  # GET /inquiryreplies/1
  # GET /inquiryreplies/1.json
  def show
  end

  # GET /inquiryreplies/new
  def new
    @inquiryreply = Inquiryreply.new
    @@inqid = params[:inq_id]
    @@houseid = params[:h_id]
  end

  # GET /inquiryreplies/1/edit
  def edit
  end

  # POST /inquiryreplies
  # POST /inquiryreplies.json
  def create
    @inquiryreply = Inquiryreply.new(inquiryreply_params)
    @inquiryreply[:inquirydetail_id]= @@inqid
    @inquiryreply[:house_id]= @@houseid
    @inquiryreply[:user_id]= current_user.id
    respond_to do |format|
      if @inquiryreply.save
        format.html { redirect_to @inquiryreply, notice: 'Inquiryreply was successfully created.' }
        format.json { render :show, status: :created, location: @inquiryreply }
      else
        format.html { render :new }
        format.json { render json: @inquiryreply.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inquiryreplies/1
  # PATCH/PUT /inquiryreplies/1.json
  def update
    respond_to do |format|
      if @inquiryreply.update(inquiryreply_params)
        format.html { redirect_to @inquiryreply, notice: 'Inquiryreply was successfully updated.' }
        format.json { render :show, status: :ok, location: @inquiryreply }
      else
        format.html { render :edit }
        format.json { render json: @inquiryreply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inquiryreplies/1
  # DELETE /inquiryreplies/1.json
  def destroy
    @inquiryreply.destroy
    respond_to do |format|
      format.html { redirect_to inquiryreplies_url, notice: 'Inquiryreply was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inquiryreply
      @inquiryreply = Inquiryreply.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inquiryreply_params
      params.require(:inquiryreply).permit(:reply, :user_id, :inquirydetail_id, :house_id)
    end
end
