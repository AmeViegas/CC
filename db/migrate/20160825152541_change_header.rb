class ChangeHeader < ActiveRecord::Migration[5.0]
  def change
    change_table :customers do |t|
      t.rename :lead , :account
    end
  end
end
