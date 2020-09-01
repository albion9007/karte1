class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

        #  def self.find_first_by_auth_conditions(warden_conditions)
        #   conditions = warden_conditions.dup
        #   if login = conditions.delete(:login)
        #     # 認証の条件式を変更する
        #     where(conditions).where(["idnum = :value", {:value => idnum}]).first
        #   else
        #     where(conditions).first
        #   end 
        # end 
end
