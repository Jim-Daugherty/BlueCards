class BluecardsController < ApplicationController
  def index
    @bluecards = @user.blue_cards
  end

  def new
    @bluecards = BlueCard.where(user_id:current_user.id)
    @currentuser = current_user
  end

  def show

  end

  def create

    @bluecard = BlueCard.new(bluecard_params)
    @bluecard.user_id = current_user.id
    @bluecard.save
    redirect_to  :back
  end

  def bluecard_params
    params.require(:bluecard).permit(:unit, :district, :council, :badge_name,
                                     :applicant_name, :applicant_address, :applicant_city, :applicant_scouttype,
                                     :counselor_name, :counselor_address, :counselor_city, :counselor_state, :counselor_zipcode, :counselor_telephone )
  end

end
