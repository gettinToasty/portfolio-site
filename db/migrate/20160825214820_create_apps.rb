class CreateApps < ActiveRecord::Migration[5.0]
  def change
    create_table :apps do |t|

      t.string :title
      t.string :thumb
      t.string :description
      t.string :path
      t.timestamps
    end
  end
end
