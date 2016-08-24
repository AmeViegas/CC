class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :home_phone
      t.string :cell_phone
      t.boolean :lead

      t.timestamps
    end
  end
end
