class PoemsController < ApplicationController
    def poem_params
        params.require(:poem).permit(:teacher_name, :county, :email, :student_name, :school, :grade, :student_teacher_name, :title, :attachment, :poem, :release)
    end
    
    def index
        @poems = Poem.all.order('created_at DESC')
    end
    
    def show
        id = params[:id]
        @poem = Poem.find(id)
        @url_test = request.base_url
        @url_test = "http://" + @url_test[8, @url_test.length]
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
        flash[:notice] = "You successfully rejected this poem."
        redirect_to authenticated_root_url
    end
    
    def create
        @poem = Poem.new(poem_params)
        if @poem.save
            Notifier.notify(@poem.teacher_name).deliver_later
            redirect_to submitted_path
        else
            flash.now[:warning] = "Please fill in Missing Fields."
            render new_poem_path
        end 
    end
    
    def home
        @poems = Poem.where("status = 'Approved'").order(:created_at).reverse_order.paginate(page: params[:page], per_page: 9)
    end
    
end
