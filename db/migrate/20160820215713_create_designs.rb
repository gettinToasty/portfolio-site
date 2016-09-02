class CreateDesigns < ActiveRecord::Migration[5.0]
  def change
    create_table :designs do |t|

      t.string :title
      t.string :thumb
      t.string :description
      t.string :longform
      t.timestamps
    end
  end
end
