#email: string
#password_digest: string
class User < ApplicationRecord
    has_secure_password
    #adds password:string and password_confirmation: string virtual attributes
end
