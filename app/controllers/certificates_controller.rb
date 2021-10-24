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
      redirect_to certificates_path, notice: "The certificate #{@certificate.activity_description} has been uploaded."
    else
      redirect_to root_path, notice: "Não foi possivel salvar o arquivo. Verifique o formato e tente novamente."
    end
  end

  private

  def certificate_params
    params.require(:certificate).permit(:activity_description, :hours, :attachment)
  end

end
