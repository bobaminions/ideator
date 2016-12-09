class IdeasController < ApplicationController
    #Main method to be called when user browses the home page
    def index
        @ideas = Idea.all
    end
    
    #Method to create new Idea
    def create
        @idea = Idea.create(idea_params)
        redirect_to root_path
    end
    
    #This method prevents users from passing malicious code to the server
    private
    
    def idea_params
        params.require(:idea).permit(:description, :author)
    end
end
