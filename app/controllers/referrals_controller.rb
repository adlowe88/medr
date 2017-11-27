class ReferralsController < ApplicationController
  def new
    # raise 'hell'
    @referral = Referral.new
  end

  def index
    # raise 'hell'
    @referrals = Referral.all
  end


  def create
    @referral = Referral.new referral_params

    if @referral.save
      # raise 'hell'
      #find the patient by his/her name
      # @patient = Patient.find_by :name => params[:name]
      # #assign the patient_id to the referral
      # @referral[:patient_id] = patient_id
      redirect_to doctor_path(session[:doctor_id]), notice: "Referral was successfully created"
    else
      render :new
    end
  end

  def edit

  end

  def update
  end

  def destroy
  end

  def show
  end

  private
  def referral_params
    params.require(:referral).permit(:referee_id, :patient_id, :time).merge(referrer_id: session[:doctor_id])
  end

end
