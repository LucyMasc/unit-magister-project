class CertificatesController < ApplicationController
  before_action :authenticate_user!

  def index
    @certificates = Certificate.all
  end

  def show
    @certificate = Certificate.find(params[:id])
  end

  def new
    @certificate = Certificate.new
  end

  def create
    @certificate = Certificate.new(certificate_params)
    if @certificate.save
      redirect_to certificate_path(@certificate)
    else
      render new
    end
  end

  private

  def certificate_params
    params.require(:certificate).permit(:activity_description, :hours, :certification)
  end

end
