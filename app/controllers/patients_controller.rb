class PatientsController < ApplicationController
  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new patient_params

    if @patient.save
      redirect_to patient_path(session[:patient_id])
    else
      render :new
    end
  end

  def edit
    @patient = Patient.find_by :id => session[:patient_id]
  end

  def update
    patient = Patient.find_by :id => session[:patient_id]
    patient.update patient_params
    redirect_to patient_path
  end

  # def home
  #   @patient = Patient.find_by :id => session[:patient_id]
  # end

  def check_referral
  end

  def pending_requests
  end

  def account_settings
    @patient = Patient.find_by :id => session[:patient_id]
  end

  private
  def patient_params
    params.require(:patient).permit(:name, :dob, :phone, :address, :medicare, :health_fund, :email, :password, :password_digest, :password_digest_confirmation)
  end

end
