class InquirydetailsController < ApplicationController
  before_action :set_inquirydetail, only: [:show, :edit, :update, :destroy]

  # GET /inquirydetails
  # GET /inquirydetails.json
  def index
    @inquirydetails = Inquirydetail.all
  end

  # GET /inquirydetails/1
  # GET /inquirydetails/1.json
  def show
  end

  # GET /inquirydetails/new
  def new
    @inquirydetail = Inquirydetail.new
    @@houseid = params[:id]
  end

  # GET /inquirydetails/1/edit
  def edit
  end

  # POST /inquirydetails
  # POST /inquirydetails.json
  def create
    #values = inquirydetail_params
    #values[:user_id] = current_user.id
    #values[:house_id]= @@house_id
    #@inquirydetail = Inquirydetail.includes(:house, :user).new(values)

    @inquirydetail = Inquirydetail.new(inquirydetail_params)
    @inquirydetail[:house_id]= @@houseid
    @inquirydetail[:user_id]= current_user.id
    respond_to do |format|
      if @inquirydetail.save
        format.html { redirect_to @inquirydetail, notice: 'Inquirydetail was successfully created.' }
        format.json { render :show, status: :created, location: @inquirydetail }
      else
        format.html { render :new }
        format.json { render json: @inquirydetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inquirydetails/1
  # PATCH/PUT /inquirydetails/1.json
  def update
    respond_to do |format|
      if @inquirydetail.update(inquirydetail_params)
        format.html { redirect_to @inquirydetail, notice: 'Inquirydetail was successfully updated.' }
        format.json { render :show, status: :ok, location: @inquirydetail }
      else
        format.html { render :edit }
        format.json { render json: @inquirydetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inquirydetails/1
  # DELETE /inquirydetails/1.json
  def destroy
    @inquirydetail.destroy
    respond_to do |format|
      format.html { redirect_to inquirydetails_url, notice: 'Inquirydetail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inquirydetail
      @inquirydetail = Inquirydetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inquirydetail_params
      params.require(:inquirydetail).permit(:content, :subject, :user_id, :house_id)
    end
end
