class AdminUserController < ApplicationController

    def disable_otp
        current_admin_user.otp_required_for_login = false
        current_admin_user.save!
        # redirect_to home_index_path
        redirect_to root_path
      end
    
      def enable_otp
        current_admin_user.otp_secret = AdminUser.generate_otp_secret
        current_admin_user.otp_required_for_login = true
        current_admin_user.save!
        redirect_to root_path
        # redirect_to home_index_path
      end

      def otp_provisioning_uri
        issuer = 'Your App'
        label = "#{issuer}:#{current_admin_user.email}"
        current_user.otp_provisioning_uri(label, issuer: issuer)
       # > "otpauth://totp/Your%20App:user@example.com?secret=[otp_secret]&issuer=Your+App"
      end

      # def otp_backup_codes

      # end
end
