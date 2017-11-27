class DoctorsController < ApplicationController
  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new doctor_params
    # raise 'hell'
    if @doctor.save
      redirect_to doctor_path(session[:doctor_id])
    else
      render :new
    end
  end

  def edit
    # raise "hell"
    @doctor = Doctor.find_by :id => session[:doctor_id]
    # @doctor = Doctor.find params[:id]
  end

  def update
    doctor = Doctor.find_by :id => session[:doctor_id]
    doctor.update doctor_params
    redirect_to doctor_path
  end

  def destroy
  doctor = Doctor.find params[:id]
  doctor.destroy
  redirect_to root_path
  end

  def show
    doctor = Doctor.find_by :id => session[:doctor_id]
  end

  # def home
  # end
  def pending_requests

  end

  def account_settings
    @doctor = Doctor.find_by :id => session[:doctor_id]
    # raise "hell"
  end

  private
  def doctor_params
    params.require(:doctor).permit(:email, :name, :provider_number, :phone, :dob, :address,:password, :passord_digest, :password_digest_confirmation)
  end
end
