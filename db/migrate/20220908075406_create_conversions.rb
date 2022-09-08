class CreateConversions < ActiveRecord::Migration[7.0]
  def change
    create_table :conversions do |t|
      t.text :body

      t.timestamps
    end
  end
end
