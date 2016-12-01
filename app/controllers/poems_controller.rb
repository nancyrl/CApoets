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
        poem.update_attributes(:status => "Approved")
        flash[:notice] = "You successfully approved this poem."
        redirect_to authenticated_root_url
    end
    
    def reject
        poem = Poem.find(params[:id])
        poem.update_attributes(:status => "Rejected")
        flash[:notice] = "You successfully reject this poem."
        redirect_to authenticated_root_url
    end
    
    def show
    
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
