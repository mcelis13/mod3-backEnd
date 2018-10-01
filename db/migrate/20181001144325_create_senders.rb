class CreateSenders < ActiveRecord::Migration[5.2]
  def change
    create_table :senders do |t|
      t.string :name
      t.string :user_name

      t.timestamps
    end
  end
end
