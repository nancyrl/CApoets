class TagsController < ApplicationController
    
    
    # def poem_params
    #     params.require(:poem).permit(:teacher_name, :county, :email, :student_name, :school, :grade, :student_teacher_name, :title, :attachment, :poem, :release)
    # end
    
    def index
        @tags = Tag.all.order('created_at DESC')
    end
    
    # def tag_index
    #     @
    
    # def show
    #     id = params[:id]
    #     @poem = Poem.find(id)
    #     @url_test = request.base_url
    #     @url_test = "http://" + @url_test[8, @url_test.length]
    # end
    
    # def new
    
    # end
    
    def approve 
        tag = Tag.find(params[:id])
        tag.update_attributes(:status => "Approved")
        flash[:notice] = "You successfully approved this tag."
        redirect_to view_tags_url
    end
    
    def reject
        tag = Tag.find(params[:id])
        tag.update_attributes(:status => "Rejected")
        flash[:notice] = "You successfully rejected this tag."
        redirect_to view_tags_url
    end
    
    # def create
    #     @poem = Poem.new(poem_params)
    #     if @poem.save
    #         redirect_to submitted_path
    #     else
    #         flash[:warning] = "Please fill in Missing Fields."
    #         render new_poem_path
    #     end
    # end
    
    # def home
    #     @poems = Poem.where("status = 'Approved'").order(:created_at).reverse_order.paginate(page: params[:page], per_page: 9)
    # end
    
    
end
