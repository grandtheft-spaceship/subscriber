class CreateSubscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :subscriptions do |t|
      t.integer :channel_id, :null => false

      t.timestamps(null: false)
    end

    add_index :subscriptions, :channel_id, :unique => true
  end
end
