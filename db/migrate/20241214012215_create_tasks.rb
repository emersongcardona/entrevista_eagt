class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title, null: false
      t.text :description, null: true
      t.datetime :due_date, null: true
      t.boolean :completed, :default =>  false
      t.timestamps
      #t.date :created_at, default: -> { 'CURRENT_TIMESTAMP' }
    end

    add_index :tasks, :completed
    add_index :tasks, :title
  end
end
