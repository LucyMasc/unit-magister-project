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
    @certificate.user = current_user
    if @certificate.save
      redirect_to certificates_path, notice: "Certificate uploaded successfully."
    else
      redirect_to root_path, notice: "Error saving the certificate. Try again."
      return
    end
  end

  private

  def certificate_params
    params.require(:certificate).permit(:activity_description, :hours, :attachment)
  end

end
