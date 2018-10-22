class AddColumnEtReports < ActiveRecord::Migration[5.2]
  def change
    add_column :et_reports, :approval_flg, :integer

  end
end
