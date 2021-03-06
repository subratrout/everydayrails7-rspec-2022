class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.boolean :done
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
