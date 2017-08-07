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
        duplicates = []
        checked_tags = []
        
        
        #sanitation check (e.g. no duplicates)
        tag_array.each do |tag|
            #tag is a string, use it to check if the tag already exists in db.
            #if it already exists in database, give pop up box alerting user that duplicate tag will not be created.
            if Tag.find_by(category: tag).present?
                duplicates.push(tag)
                checked_tags = tag_array - [tag]
            end
        end
        
        if duplicates.length > 0
            flash[:warning] = "\"#{duplicates.to_sentence}\"" + " already exist(s) in the database. Non-duplicates successfully added."
            # render :template => "index"
        end
        
        #for all valid tags in checked_tags array, add them into the database.
        checked_tags.each do |tag|
            new_tag = Tag.new(:category => tag, :status => "Pending")
            if not new_tag.save
                flash[:warning] = "Please fix formatting."
                render view_tags_path
            end
        end
        
        redirect_to view_tags_path
        
        
        #ASSUMPTIONS: by checking for duplication at time of creation, the database will never have any duplicate tags.
    end
    
    # def home
    #     @poems = Poem.where("status = 'Approved'").order(:created_at).reverse_order.paginate(page: params[:page], per_page: 9)
    # end
    
    
end
