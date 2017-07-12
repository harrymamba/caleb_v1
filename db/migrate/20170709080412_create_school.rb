class CreateSchool < ActiveRecord::Migration[5.0]
  def change

    create_table :schools do |t|
      t.string :name
      t.string :token
      t.boolean :is_active
      t.datetime :expiration_date
      t.timestamp
    end

    create_table :school_details do |t|
      t.references :school, index: true, foreign_key: true
      t.string :contact_number
      t.string :fax_number
      t.text :address
      t.text :description
      t.integer :established_year
      t.timestamps null: false
    end

  end
end
