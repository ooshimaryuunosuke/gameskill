class CreateDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :details do |t|
      t.references :user
      t.references :request
      t.text       :work
      t.timestamps
    end
  end
end
