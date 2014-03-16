#encoding: utf-8
class MailingsController < ApplicationController
  before_action :set_mailing, only: [:show, :edit, :update, :destroy]

  # GET /mailings/new
  def new
    @mailing = Mailing.new
  end

  # POST /mailings
  # POST /mailings.json
  def create
    @mailing = Mailing.new(mailing_params)

    respond_to do |format|
      if @mailing.save
        format.html { redirect_to root_path, notice: '"Você receberá nosso sinal assim que as engrenagens começarem e rodar"' }
        format.json { render action: 'show', status: :created, location: @mailing }
      else
        format.html { render action: 'new' }
        format.json { render json: @mailing.errors, status: :unprocessable_entity }
      end
    end
  end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_mailing
    @mailing = Mailing.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def mailing_params
    params.require(:mailing).permit(:name, :email, :allow)
  end

end
