class PatientsController < ApplicationController
  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new patient_params

    if @patient.save
      redirect_to root_path
    else
      render :new
    end

  end


  def home
    @patient = Patient.find_by :id => session[:patient_id]
  end

  def check_referral
  end

  def pending_requests
  end

  def account_settings
  end

  private
  def patient_params
    params.require(:patient).permit(:email, :password_digest, :password_digest_confirmation)
  end

end
