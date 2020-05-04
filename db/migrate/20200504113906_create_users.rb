class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :cake_flavour
      t.string :experience

      t.timestamps
    end
  end
end
