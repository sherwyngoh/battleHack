class CreateMemorials < ActiveRecord::Migration
  def change
    create_table :memorials do |t|
      t.string :name
      t.date :dob
      t.date :dod
      t.string :about
      t.string :race
      t.boolean :guestbook
      t.string :wake
      t.datetime :wake_date
      t.string :funeral
      t.datetime :funeral_date
      t.string :theme
      t.string :religion
      t.string :contact_email
      t.string :contact_number

      t.timestamps null: false
    end
  end
end
