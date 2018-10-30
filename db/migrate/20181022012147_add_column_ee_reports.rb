class AddColumnEeReports < ActiveRecord::Migration[5.2]
  def change
    add_column :ee_reports, :approval_flg, :integer
