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
        format.html { redirect_to @mailing, notice: 'Mailing was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mailing }
      else
        format.html { render action: 'new' }
        format.json { render json: @mailing.errors, status: :unprocessable_entity }
      end
    end
  end

end
