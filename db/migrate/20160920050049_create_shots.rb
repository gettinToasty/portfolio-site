class CreateShots < ActiveRecord::Migration[5.0]
  def change
    create_table :shots do |t|
      t.string :caption
      t.string :date
      t.string :img
      t.timestamps
    end
  end
end
