class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :firstname
      t.string :lastname
      t.integer :number

      t.timestamps
    end
  end
end
