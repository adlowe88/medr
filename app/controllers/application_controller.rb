class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :fetch_user

  private
  def fetch_user
    @current_patient = Patient.find_by :id => session[:patient_id] if session[:patient_id].present?
    session[:patient_id] = nil unless @current_patient.present?
    @current_doctor = Doctor.find_by :id => session[:doctor_id] if session[:doctor_id].present?
    session[:doctor_id] = nil unless @current_doctor.present?
  end
end
