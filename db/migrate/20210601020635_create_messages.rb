class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.string :sender
      t.string :location
      t.text :body

      t.timestamps
    end
  end
end
