class User < ApplicationRecord
    has_secure_password
    has_secure_password :recovery_password, validations: false
    #look into this later (recovery password, false)
end
