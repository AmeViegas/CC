class CreateCallLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :call_logs do |t|
      t.date :calldate
      t.string :caller
      t.text :comments
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
