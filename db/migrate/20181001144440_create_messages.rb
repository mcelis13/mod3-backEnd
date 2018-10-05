class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.integer :conversation_id
      t.integer :sender_id
      t.string :content
      t.timestamps
    end
  end
end
