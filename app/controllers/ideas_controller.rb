class IdeasController < ApplicationController
    #Main method to be called when user browses the home page
    def index
        @ideas = Idea.all
    end
    
    #Method to create new Idea
    def create
        @idea = Idea.create(idea_params)
        if @idea.valid?
            #
        else
            #
        end
        
        redirect_to root_path
    end
    #end Idea create method
    
    #Method to edit ideas
    def edit
        @idea = Idea.find(params[:id])
    end
    #end Idea edit method
    
    #Method to update ideas
    def update
        @idea = Idea.find(params[:id])
        if @idea.update(idea_params)
            redirect_to root_path
        else
            redirect_to edit_idea_path(params[:id])
        end
    end
    #end Idea update method
    
    #Method to delete ideas
    def destroy
        @idea = Idea.find(params[:id])
        @idea.destroy
        redirect_to root_path
    end
    #end Idea delete method
    
    #This method prevents users from passing malicious code to the server
    private
    
    def idea_params
        params.require(:idea).permit(:description, :author)
    end
end
