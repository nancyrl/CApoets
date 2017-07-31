class TagsController < ApplicationController
    
    
    def tag_params
        params.require(:tag).permit(:tag_list)
    end
    
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
        tag = Tag.find(params[:tag_id])
        #revive function
        if tag[:status].to_s == "Rejected"
            tag.update_attributes(:status => "Pending")
            #if not from admin tag page, but from poems show page
            # if current_page?(controller: 'poems', action: 'show')
            #     redirect_back(fallback_location: fallback_location)
            # else
            #     redirect_to view_tags_url
            # end
            redirect_to view_tags_url
        else
            tag.update_attributes(:status => "Approved")
            flash[:notice] = "You successfully approved this tag."
            #if not from admin tag page, but from poems show page
            # if current_page?(controller: 'poems', action: 'show')
            #     redirect_back(fallback_location: fallback_location)
            # else
            #     redirect_to view_tags_url
            # end
            redirect_to view_tags_url
        end
    end
    
    def reject
        tag = Tag.find(params[:tag_id])
        tag.update_attributes(:status => "Rejected")
        flash[:notice] = "You successfully rejected this tag."
        redirect_to view_tags_url
    end
    
    def create
        tags = tag_params
        tag_array = tags[:tag_list].split(/[\s,]+/)
        
        tag_array.each do |tag|
            new_tag = Tag.new(:category => tag, :status => "Pending")
            if not new_tag.save
                flash[:warning] = "Please fix formatting."
                render view_tags_path
            end
        end
        redirect_to view_tags_path
    end
    
    # def home
    #     @poems = Poem.where("status = 'Approved'").order(:created_at).reverse_order.paginate(page: params[:page], per_page: 9)
    # end
    
    
end
