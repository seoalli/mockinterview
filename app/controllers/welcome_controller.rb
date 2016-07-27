class WelcomeController < ApplicationController
  def index
    @interview_slots = InterviewSlot.all
  end

  #def new
  # end



  def show
    @interview_slots = InterviewSlot.all
  end

  def register
  end

  def about
  end

  def schedule
    @interview_slots = InterviewSlot.all
    #@interview_slot = InterviewSlot.new
    #@interview_slot.save
  end
  def new
    #@interview_slot = InterviewSlot.new
    #@interview_slot.save
    #redirect_to(:action => 'update')

  end

  def create
    # @interview_slot = InterviewSlot.new(interview_slots_parameters)
    # @interview_slot.save
  end

  private
  def interview_slots_parameters
    params.require( :interview_slot ).permit( :jobType, :nineAM, :nine30AM,
                                              :tenAM, :ten30AM, :elevenAM,
                                              :eleven30AM, :NOON, :twelve30PM, :onePM )
  end


end
