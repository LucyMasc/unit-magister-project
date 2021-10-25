class AdminCertificatesController < ApplicationController
  def index
    if current_user.admin
      @certificates = Certificate.where(status: false)
    else
      redirect_to root_path, notice: "Usuário não autorizado"
    end
  end

  def update
    if current_user.admin
      @certificate= Certificate.find(params[:id])
      @certificate.status = true
      @certificate.save

      redirect_to admin_certificates_path, notice: "Certificate approved"
    else
      redirect_to root_path, notice: "Usuário não autorizado"
    end
  end
end
