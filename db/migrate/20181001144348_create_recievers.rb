class CreateRecievers < ActiveRecord::Migration[5.2]
  def change
    create_table :recievers do |t|
      t.string :name
      t.string :user_name

      t.timestamps
    end
  end
end
