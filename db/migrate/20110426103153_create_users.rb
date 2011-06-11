class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.string :email
      t.string :nickname
      t.string :first
      t.string :last
      t.string :location
      t.string :description
      t.string :image
      t.string :phone
      t.string :urls

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
