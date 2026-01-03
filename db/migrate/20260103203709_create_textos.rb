class CreateTextos < ActiveRecord::Migration[8.1]
  def change
    create_table :textos do |t|
      t.string :titulo
      t.string :cuerpo
      t.string :autor

      t.timestamps
    end
  end
end
