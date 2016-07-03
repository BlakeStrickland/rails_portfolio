class CreateGuestInfos < ActiveRecord::Migration
  def change
    create_table :guest_infos do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.string :company

      t.timestamps null: false
    end
  end
end
