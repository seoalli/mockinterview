class InterviewSlotsController < ApplicationController



def index
  @interview_slots = InterviewSlot.all

end

def show
  @interview_slot = InterviewSlot.find(params[:id])

end

def new
 #@interview_slot = InterviewSlot.new
 #@interview =Interview.new
 #@interview_slot.save
  redirect_to(:action => 'edit')
 #redirect_to(:action => 'update')

end

def create

  #@interview_slot = InterviewSlot.new(interview_slots_parameters)
  #@interview_slot.save
  @interview = Interview.new(interview_parameters)
  @interview.save
  render('edit')
  #redirect_to(:action => 'update')
  #redirect_to welcome_schedule_path
    #redirect_to(:action => 'index')
 # else
  #  render('new')
  #end
end

def edit
  @interview_slot = InterviewSlot.find(params[ :id ])
  #@interview_slot = InterviewSlot.all
end

def update

  flash[:success] = "inside update!"
 @interview_slot = InterviewSlot.find(params[ :id ])
 @interview_slot.update_attributes(interview_slots_parameters)
 respond_to do |format|
     format.js{ render :nothing => true }
 end
end

 def update_attributes

   flash[:success] = "inside update_attributes!"
   @interview_slot = InterviewSlot.find(params[ :id ])
   @interview_slot.update_attributes(interview_slots_parameters)
   respond_to do |format|
     format.js{ render :nothing => true }
    end
 #@interview_slots = InterviewSlot.all
 #@interview_slot.update_attributes(interview_slot_params) #_attributes(interview_slot_params)
 #S@interview_slots.save()
 #redirect_to welcome_schedule_path, :action => 'update'
 #redirect_to(:action => 'update')
end

def delete
    @interview_slot = InterviewSlot.find(params[:id])
end
def destroy
    InterviewSlot.find(params[ :id ]).destroy
    redirect_to( :action => 'index' )
end

private
def interview_slots_parameters
  params.require( :interview_slot ).permit(:jobType, :nineAM, :nine30AM,
                                               :tenAM, :ten30AM, :elevenAM,
                                               :eleven30AM, :NOON, :twelve30PM, :onePM, :interview_id )
end
private
def interview_parameters
  params.require(:interview).permit(:name, :lastName, :email,
                                    :phoneNumber, :interviewTime, :interviewField, :message, :interviewStatus)
end

end
