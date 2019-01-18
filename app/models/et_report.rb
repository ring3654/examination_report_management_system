class EtReport < ApplicationRecord

    validate :error_check
    def error_check
       if reporting_date > Date.today
           errors[:base] << '報告年月日が今日以降の値です'
       end

       if reporting_date < test_day
           errors[:base] << '報告年月日が試験日より前です'
       end

       if student_class.blank?
             errors[:base] <<  '組は必ず入力してください。'
        elsif student_class.to_i <= 0 or student_class.to_i > 4
            errors[:base] << '組は1以上4以下で入力してください。'
        end

        if student_number.blank?
            errors[:base] << '番号は必ず入力してください。'
        elsif student_number.to_i <= 0 or student_number.to_i >40
                errors[:base] << '番号は1以上40以下で入力してください。'
        end

     if student_id.blank?
            errors[:base] << '受験者IDは必ず入力してください。'
        end

        if job_category.blank?
            errors[:base] << '職種は必ず入力してください。'
        end

         if office_name.blank?
            errors[:base] << '事業所名は必ず入力してください。'
        end

        if job_vote_number.blank?
           errors[:base] << '求人票受付番号は必ず入力してください。'
        elsif job_vote_number.to_i <= 0
           errors[:base] << '求人票受付番号が利用できない値です。'
        end

        if test_day > Date.today
            errors[:base] << '試験日が今日以降の値です'
        end

        if introduction_number.blank?
           errors[:base] << '学校斡旋か縁故か選択してください。'
        end

        if postal_code.blank?
           errors[:base] << '郵便番号は必ず入力してください。'
        elsif postal_code.to_i <= 0
           errors[:base] << '郵便番号が利用できない値です。'
        end

        if street_address.blank?
           errors[:base] << '所在地は必ず入力してください。'
        end
       
        if examination_hall.blank?
           errors[:base] << '試験会場は必ず入力してください。'
        end

        if selection_method.blank?
           errors[:base] << '学校斡旋か縁故かどちらか選択してください。'
        end


    end
end
