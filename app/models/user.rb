#email: string
#password_digest: string
class User < ApplicationRecord
    has_secure_password
    #adds password:string and password_confirmation: string virtual attributes
    
    validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'must be a valid email'}
end
