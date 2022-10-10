class AdminUser < ApplicationRecord
  attr_accessor :login

  devise :two_factor_authenticatable,
          otp_secret_encryption_key: 'any_random_string_or_rails_secret'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  # devise :two_factor_backupable, otp_backup_code_length: 32,
  #        otp_number_of_backup_codes: 10
end
