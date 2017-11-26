class SessionController < ApplicationController
  def new
  end

  def create
    patient = Patient.find_by :email => params[:email]
    if patient.present? && patient.authenticate(params[:password_digest])
      session[:patient_id] = patient.id
      # if login successful redirect to patient home page
      redirect_to home_patients_path
    else
      redirect_to login_path
    end

    doctor = Doctor.find_by :email => params[:email]
    if doctor.present? && doctor.authenticate(params[:password_digest])
      session[:doctor] = doctor.id
      # if login successful redirect to doctor home page
      redirect_to home_doctors_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session[:patient_id] = nil
    session[:doctor_id] = nil
    redirect_to root_path
  end
end
