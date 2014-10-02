class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.string :title, null: false
      t.text :body, null: false

      t.timestamps
    end
  end
end
