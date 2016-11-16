class PoemsController < ApplicationController
    def poem_params
        params.require(:poem).permit(:teacher_name, :county, :email, :student_name, :school, :grade, :student_teacher_name, :title, :attachment, :poem, :release)
    end
    
    def index
        @poems = Poem.all
    end
    
    def new
    
    end
    
    def create
        @poem = Poem.new(poem_params)
        if @poem.save
            redirect_to submitted_path
        else
            flash[:warning] = "Missing Fields"
            render new_poem_path
        end
    end
end
