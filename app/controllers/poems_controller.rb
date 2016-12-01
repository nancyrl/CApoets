class PoemsController < ApplicationController
    def poem_params
        params.require(:poem).permit(:teacher_name, :county, :email, :student_name, :school, :grade, :student_teacher_name, :title, :attachment, :poem, :release)
    end
    
    def index
        @poems = Poem.all
    end
    
    def show
        id = params[:id]
        @poem = Poem.find(id)
        @url_test = request.base_url
        @url_test = "http://" + @url_test[8, @url_test.length]
        #@embed_url = "https://docs.google.com/gview?url=" + @poem.attachment_url + "&embedded=true"
        #https://your-project-name-jeremyou.c9users.io/uploads/poem/attachment/17/sample.docx
        #<iframe class="doc" src="https://docs.google.com/gview?url=http://writing.engr.psu.edu/workbooks/formal_report_template.doc&embedded=true"></iframe>

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
    
    def home
        @poems = Poem.order(:created_at).reverse_order.paginate(page: params[:page], per_page: 9)
    end
end
