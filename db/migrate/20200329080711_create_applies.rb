class CreateApplies < ActiveRecord::Migration[6.0]
  def change
    create_table :applies do |t|
    t.text       :guarantee
    t.references :request
    t.references :user
      t.timestamps
    end
  end
end
