class PoemsController < ApplicationController
    def poem_params
        params.require(:poem).permit(:teacher_name, :county, :email, :student_name, :school, :grade, :student_teacher_name, :title, :attachment, :poem, :release)
    end
    
    def index
        @poems = Poem.all
    end
    
    def new
    
    end
    
    def approve 
        poem = Poem.find(params[:id])
        poem.update_attribute(:status, "Approved")
    end
    
    def reject
        poem = Poem.find(params[:id])
        poem.update_attribute(:status, "Rejected")
    end
    
    def create
        @poem = Poem.new(poem_params)
        if @poem.save
            flash[:notice] = "You successfully submitted a poem."
            redirect_to poems_path
        else
            flash[:warning] = "Missing Fields"
            render new_poem_path
        end
    end
end
