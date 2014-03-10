class Painel::MailingsController < ApplicationController
  before_action :set_painel_mailing, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /painel/mailings
  # GET /painel/mailings.json
  def index
    @painel_mailings = Painel::Mailing.all
  end

  # GET /painel/mailings/1
  # GET /painel/mailings/1.json
  def show
  end

  # GET /painel/mailings/new
  def new
    @painel_mailing = Painel::Mailing.new
  end

  # GET /painel/mailings/1/edit
  def edit
  end

  # POST /painel/mailings
  # POST /painel/mailings.json
  def create
    @painel_mailing = Painel::Mailing.new(painel_mailing_params)

    respond_to do |format|
      if @painel_mailing.save
        format.html { redirect_to @painel_mailing, notice: 'Mailing was successfully created.' }
        format.json { render action: 'show', status: :created, location: @painel_mailing }
      else
        format.html { render action: 'new' }
        format.json { render json: @painel_mailing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /painel/mailings/1
  # PATCH/PUT /painel/mailings/1.json
  def update
    respond_to do |format|
      if @painel_mailing.update(painel_mailing_params)
        format.html { redirect_to @painel_mailing, notice: 'Mailing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @painel_mailing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /painel/mailings/1
  # DELETE /painel/mailings/1.json
  def destroy
    @painel_mailing.destroy
    respond_to do |format|
      format.html { redirect_to painel_mailings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_painel_mailing
      @painel_mailing = Painel::Mailing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def painel_mailing_params
      params.require(:painel_mailing).permit(:name, :email, :allow)
    end
end
