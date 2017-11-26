class DoctorsController < ApplicationController
  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new doctor_params

    if @doctor.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @doctor = Doctor.find params[:doctor_id]
  end

  def home
  end

  def create_referral
  end

  def pending_requests

  end

  def account_settings
    @doctor = Doctor.find_by :id => session[:doctor_id]
    # raise "hell"
  end

  def doctor_params
    params.require(:doctor).permit(:email, :passord_digest, :password_digest_confirmation)
  end
end
