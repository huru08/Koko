class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         validates :email, uniqueness: true
         validates :username, uniqueness: true
         validates :profile,    length: { maximum: 140 }


         def email_required?
          false
        end
        
        def email_changed?
          false
        end

        def update_without_current_password(params, *options)
          params.delete(:current_password)
      
          if params[:password].blank? && params[:password_confirmation].blank?
            params.delete(:password)
            params.delete(:password_confirmation)
          end
      
          result = update_attributes(params, *options)
          clean_up_passwords
          result
        end
        mount_uploader :profile_image, ImageUploader


         has_many :comments

end
