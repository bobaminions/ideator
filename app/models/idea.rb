#Creating Idea Model
class Idea < ActiveRecord::Base
    #Form validation for Ideas
    validates :description, :author, presence: true
end
