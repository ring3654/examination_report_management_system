class User < ApplicationRecord
    validates :user_id, uniqueness: {message: "は重複したＩＤを登録できません"}
    validates :user_id, length: { maximum: 9, minimum: 5, message: "は必ず5～9桁で登録してください" }

    validate :error_check
    def error_check
      if user_id.blank?
        errors[:base] << 'ユーザＩＤは必ず入力してください'
     end        
      if name.blank?
        errors[:base] << '氏名は必ず入力してください'
      end
      if authority.blank?
        errors[:base] << '権限は必ず入力してください。'
      end
    end
    has_secure_password     
end

