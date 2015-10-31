class CreatePortfilos < ActiveRecord::Migration
  def change
    create_table :portfilos do |t|
      t.string :name
      t.string :category
      t.text :description

      t.timestamps null: false
    end
  end
end
