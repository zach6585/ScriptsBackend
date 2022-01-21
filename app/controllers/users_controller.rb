class UsersController < ApplicationController
    
    def create 
        user = User.new(username: params[:username], password: params[:password], email: params[:email])
        if user.valid?
            if params[:password] == params[:password_confirmation]
                payload= {user_id: user.id}
                token = encode_token(payload)
                render json: {user: user, jwt: token, mentees: Mentee.all.select{|mentee| mentee.user_id == payload["user_id"]}}
            else 
                render json: {errors: ["Password and Password Confirmation do not match"]}
            end 
        else 
            render json: {errors: user.errors.full_messages}
        end 
    end 
end