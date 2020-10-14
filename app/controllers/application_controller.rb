class ApplicationController < ActionController::API

    def encode_token(payload)
        JWT.encode(payload, 'secret goes here')
    end
end
