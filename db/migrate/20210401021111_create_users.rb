class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.boolean :stay_leave
      t.integer :seat_number

      t.timestamps
    end
  end
end
