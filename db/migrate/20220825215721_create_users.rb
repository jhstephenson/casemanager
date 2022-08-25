class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.date :date_of_birth
      t.string :role
      t.string :name_first
      t.string :name_middle
      t.string :name_last
      t.string :initials
      t.string :phone_office
      t.string :phone_cell
      t.string :phone_other

      t.timestamps
    end
  end
end
