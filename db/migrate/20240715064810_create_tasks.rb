class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :sub_title
      t.datetime :due_date
      t.integer :priority
      t.integer :status, default: true # with status is false - the task is finished

      t.timestamps
    end
  end
end
