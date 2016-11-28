class AdminController < ApplicationController
    def index
        @poems = Poem.all
    end
end