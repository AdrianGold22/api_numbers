class CreateAleatorios < ActiveRecord::Migration[6.1]
  def change
    create_table :aleatorios do |t|
      t.integer :numero
      t.string :tipo

      t.timestamps
    end
  end
end
