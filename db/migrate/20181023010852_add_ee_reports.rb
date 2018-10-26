class AddEeReports < ActiveRecord::Migration[5.2]
  def change
    add_column :ee_reports, :recommended_group, :integer
  end
end
