class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.integer :age
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :profiles, :users
  end
end
