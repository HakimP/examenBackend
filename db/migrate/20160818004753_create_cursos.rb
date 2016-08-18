class CreateCursos < ActiveRecord::Migration
  def change
    create_table :cursos do |t|
      t.string :nombre
      t.date :fecha
      t.float :precio
      t.references :salon, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
