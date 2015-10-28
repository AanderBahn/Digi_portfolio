class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :headline
      t.text :blogBody

      t.timestamps null: false
    end
  end
end
