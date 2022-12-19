class CreateAuthentications < ActiveRecord::Migration[7.0]
  def change
    create_table :authentications do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :uid
      t.string :provider

      t.timestamps
    end
  end
end
