class CreateMailings < ActiveRecord::Migration
  def change
    create_table :mailings do |t|
      t.string :name
      t.string :email
      t.boolean :allow

      t.timestamps
    end
  end
end
