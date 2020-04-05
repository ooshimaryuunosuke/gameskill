class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.text       :sentence
      t.integer    :star
      t.references :contractor
      t.references :client
      t.timestamps
    end
  end
end
