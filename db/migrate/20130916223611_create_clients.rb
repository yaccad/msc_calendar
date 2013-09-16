class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :clientName

      t.timestamps
    end
    add_index :clients, [:id, :created_at]
  end
end
