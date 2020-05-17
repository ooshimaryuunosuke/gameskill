class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :playername
      t.text   :introduction
      t.string   :twitter
      t.references :user
      t.timestamps
    end
  end
end
