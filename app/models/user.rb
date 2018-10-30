class User < ApplicationRecord
    validates :user_id, uniqueness: {message: "重複したユーザＩＤは登録できません"}
    validates :annual, length: { is: 4, message: "は必ず4桁で入力してください" }
    validates :user_id, length: { is: 9, message: "ユーザIDは必ず9桁で登録してください" }

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
    has_secure_password     
end

