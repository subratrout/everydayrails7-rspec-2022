class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.date :ends_at

      t.timestamps null: false
    end
  end
end
