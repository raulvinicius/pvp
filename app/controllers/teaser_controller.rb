class TeaserController < ApplicationController
  def index
    @mailing = Mailing.new
  end
end
