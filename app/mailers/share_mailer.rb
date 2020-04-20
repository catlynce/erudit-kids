class ShareMailer < ApplicationMailer
    def register_email
        @share = params[:share]
        @user  = params[:user]
        # @url = 'http://localhost:3000/users/sign_up'
        mail(to: @share.email, subject: 'User shared with you erudit-kids')
    end
end
