class CreatePieces < ActiveRecord::Migration[5.0]
  def change
    create_table :pieces do |t|
      t.string :img
      t.string :date
      t.string :description
      t.references :design
      t.timestamps
    end
  end
end
