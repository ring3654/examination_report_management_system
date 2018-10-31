class EeReport < ApplicationRecord

    validate :error_check
    def error_check
      if reporting_date > Date.today
        errors[:base] << '報告年月日の値が不正です'
      end

      if test_day > Date.today
        errors[:base] << '試験日の値が不正です'
      end

      if student_class.blank?
        errors[:base] << '組は必ず入力してください'
     end        
      if student_class.to_i <= 0 or student_class.to_i >= 5
        errors[:base] << '組は1以上4以下で入力してください'
      end
      if student_number.blank?
        errors[:base] << '番号は必ず入力してください'
     end
     if student_number.to_i >= 40 
        errors[:base] << '組は40以下で入力してください'
      end   
     if student_id.blank?
        errors[:base] << '学生IDは必ず入力してください'
     end
     if school_name.blank?
        errors[:base] << '学校名は必ず入力してください'
     end            
     if postal_code.blank? or street_address.blank?
        errors[:base] << '郵便番号と所在地は必ず入力してください'
     end
     if examination_hall.blank?
        errors[:base] << '試験会場は必ず入力してください'
     end
     if entrance_form.blank?
      errors[:base] << '入試形態は必ず入力してください'
   end
   if entrance_form == 1 and recommended_group.present?
    errors[:base] << '一般入試の際は推薦入試形態を入力しないでください'
 end
 if entrance_form == 1 and recommended_form.present?
  errors[:base] << '一般入試の際は推薦形態を入力しないでください'
end
end
end