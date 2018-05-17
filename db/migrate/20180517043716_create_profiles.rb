class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :nickname
      t.string :language
      t.string :avatar
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end