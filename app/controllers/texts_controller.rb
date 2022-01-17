require 'pry'
class TextsController < ApplicationController
    
    def index
        texts = Text.all
        render json: texts
    end 


    def update
        # binding.pry
        txt = Text.find_by(:id_tag => params["id_tag"], :mentee_id => params["mentee_id"])
        txt.value = params["value"]
        txt.save
        render json: txt
    end 

    def create 
        # binding.pry
        text = Text.create(:value => params["value"], :id_tag => params["id_tag"], :script => params["script"], :mentee_id => params["mentee_id"])
        render json: text
    end 

end
