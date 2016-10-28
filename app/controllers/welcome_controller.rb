class WelcomeController < ApplicationController
    def index
        @poem = Poem.create!(params[:poem])
        flash[:notice] = "Poem was successfully submitted."
        # redirect_to poem_path
    end
end
