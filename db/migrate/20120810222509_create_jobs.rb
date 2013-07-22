class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.date :published_on
      t.date :due_date
      t.text :description
      t.integer :quantity

      t.timestamps
    end
  end
end
