class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :user_id
      t.string :name
      t.string :pass
      t.integer :flg
      t.integer :annual
      t.integer :authority

      t.timestamps
    end
  end
end
