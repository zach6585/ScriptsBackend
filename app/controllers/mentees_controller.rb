class MenteesController < ApplicationController
    def index 
        mentees = Mentee.all 
        render json: mentees 
    end 

    def show 
        mentee = Mentee.find_by_id(params[:mentee_id])
        render json: mentee
    end 

    def create
        mentee = Mentee.create(:name => params["name"], :user_id => params["user_id"])
        render json: mentee
    end 
end
