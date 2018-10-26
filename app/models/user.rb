class User < ApplicationRecord
    has_secure_password 
    validates :user_id, uniqueness: {message: "重複したユーザＩＤは登録できません"}

    validate :error_check
    def error_check
      if user_id.blank?
        errors[:base] << 'ユーザＩＤは必ず入力してください'
     end        
      if name.blank?
        errors[:base] << '名前は必ず入力してください'
      end
      if annual.blank?
        errors[:base] << '年度は必ず入力してください'
      end
      if password.blank?
        errors[:base] << 'パスワードは必ず入力してください'
     end        


    end
end
