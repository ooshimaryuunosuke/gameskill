class CreateRequest < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.string :title
      t.text   :contents
      t.string :price
      t.string :genre 
      t.references :user
      t.timestamps
    end
  end
end
