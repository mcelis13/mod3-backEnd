class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.integer :coversation_id

      t.timestamps
    end
  end
end
