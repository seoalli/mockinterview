class WelcomeController < ApplicationController
  def index
    @interview_slots = InterviewSlot.all
  end

  def new

  end



  def show
    @interview_slots = InterviewSlot.all
  end

  def register
  end
  
  def about
  end

  def schedule
    @interview_slots = InterviewSlot.all
  end

end
