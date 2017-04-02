class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.string :completion_date

      t.timestamps
    end
  end
end
