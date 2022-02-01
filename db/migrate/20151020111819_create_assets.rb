class CreateAssets < ActiveRecord::Migration[7.0]
  def change
    create_table :assets do |t|
      t.string :file
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
