class CreateMyInfos < ActiveRecord::Migration
  def change
    create_table :my_infos do |t|

      t.timestamps null: false
    end
  end
end
