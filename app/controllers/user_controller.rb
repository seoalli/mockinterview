class UserController < ApplicationController

  attr_accessor( :interview_slots )
  attr_accessor( :interviews )
  def index

  end

  def new
    @user = User.new

  end

  private
  def interview_parameters
    params.require(:interview).permit(:name, :lastName, :email, :phoneNumber, :interviewTime, :interviewField,
                                      :interviewStatus, :slotTimeDescription, :slotID)
  end
end
