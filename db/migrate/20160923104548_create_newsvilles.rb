class CreateNewsvilles < ActiveRecord::Migration
  def change
    create_table :newsvilles do |t|
      t.string :title
      t.text :body
      t.string :time
      t.string :image_url

      t.timestamps null: false
    end
  end
end
