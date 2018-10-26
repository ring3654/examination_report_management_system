class EtReport < ApplicationRecord

    validate :error_check
    def error_check
        if student_class.blank?
             errors[:base] <<  '組は必ず入力してください。'
        end

        if student_class.to_i <= 0 or student_class.to_i > 4
            errors[:base] << '組は1以上4以下で入力してください。'
        end

        if student_number.blank?
            errors[:base] << '番号は必ず入力してください。'
        end

        if student_number.to_i <= 0 or student_number.to_i >40
            errors[:base] << '番号は1以上40以下で入力してください。'
        end

        if student_id.blank?
            errors[:base] << '受験者IDは必ず入力してください。'
        end

        if student_id.to_i <= 0
            errors[:base] << '受験者IDの値が－です。'
        end

        if job_category.blank?
            errors[:base] << '職種は必ず入力してください。'
        end

         if office_name.blank?
            errors[:base] << '事業所名は必ず入力してください。'
        end

        if job_vote_number.blank?
           errors[:base] << '求人票受付番号は必ず入力してください。'
        end

        if job_vote_number.to_i <= 0
           errors[:base] << '求人票受付番号の値が－です。'
        end

        if introduction_number.blank?
           errors[:base] << '学校斡旋か縁故か選択してください。'
        end

        if postal_code.blank?
           errors[:base] << '郵便番号は必ず入力してください。'
        end

        if postal_code.to_i <= 0
           errors[:base] << '郵便番号の値が－です。'
        end

        if street_address.blank?
           errors[:base] << '所在地は必ず入力してください。'
        end
       
        if examination_hall.blank?
           errors[:base] << '試験会場は必ず入力してください。'
        end

        if selection_method.blank?
           errors[:base] << '選考方法は必ず選択してください。'
        end


    end
end
