class SessionController < ApplicationController
  def new
  end

  def create
    #Is the email being entered a patient or a doctor?
    patient = Patient.find_by :email => params[:email]
    doctor = Doctor.find_by :email => params[:email]

    #If there is a patient present, check password
    if patient.present? && patient.authenticate(params[:password])
      session[:patient_id] = patient.id
      # if login successful redirect to patient home page
      redirect_to home_patients_path
    #If there is a doctor present, check password
    elsif doctor.present? && doctor.authenticate(params[:password])
      session[:doctor_id] = doctor.id
      # if login successful redirect to doctor home page
      redirect_to home_doctors_path
    else
      #Otherwise prompt login again
      redirect_to login_path
    end
  end

  def destroy
    session[:patient_id] = nil
    session[:doctor_id] = nil
    redirect_to root_path
  end
end
