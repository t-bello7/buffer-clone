class PasswordResetController < ApplicationController
    def new
    end

    def create
        @user = User.find_by(email: params[:email])
        if @user.present?
            PasswordMailer.with(user: @user).reset.deliver_later
        end

        redirect_to root_path, notice:"A reset link has been sent to your email."
    end
end