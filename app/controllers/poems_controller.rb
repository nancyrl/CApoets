class PoemsController < ApplicationController
    def poem_params
        params.require(:poem).permit(:teacher_name, :email, :student_name, :title, :attachment, :poem)
    end
    
    def index
        @poems = Poem.all
    end
    
    def new
    
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
