class SorceryCore < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :avatar
      t.integer :role
      t.integer :twitter_id
      t.string :email,            null: false, index: { unique: true }
      t.string :crypted_password
      t.string :salt
      
      t.timestamps                null: false
    end
  end
end