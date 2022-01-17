require 'pry'
class AuthsController < ApplicationController
    
    def login
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            payload = {user_id: user.id}
            token = encode_token(payload)
            render json: {user: user, jwt: token, mentees: Mentee.all.select{|mentee| mentee.user_id == payload["user_id"]}}
        else 
            render json: {status: 401, errors: ["Log in failed! Username or password invalid"]}
        end 
    end 

    def auto_login
        token = request.headers["Authenticate"]
        user = User.find(decoded_token(token)["user_id"])
        render json: {user: user, mentees: Mentee.all.select{|mentee| mentee.user_id === user.id}}
    end 
end
