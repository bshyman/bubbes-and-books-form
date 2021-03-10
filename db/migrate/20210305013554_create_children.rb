class CreateChildren < ActiveRecord::Migration[6.1]
  def change
    create_table :children do |t|
      t.references :bubbe
      t.string :name
      t.string :age
      t.string :interests

      t.timestamps
    end
  end
end
