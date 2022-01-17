require 'pry'
class ApplicationController < ActionController::Base
    
    skip_before_action :verify_authenticity_token
    def encode_token(payload)
        JWT.encode(payload, 'l9T&;(?*+AY%Nif')
    end 

    def auth_header
        request.headers['Authorization']
    end 

    def decoded_token(token)
        JWT.decode(token, 'l9T&;(?*+AY%Nif', true, {algorithm: 'HS256'})[0]
    end 

end
