class CreateToilets < ActiveRecord::Migration[5.2]
  def change
    create_table :toilets do |t|
      t.string :name
      t.text :description
      t.text :address
      t.boolean :available, default: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
