class CreateAlumnos < ActiveRecord::Migration
  def change
    create_table :alumnos do |t|
      t.string :nombre
      t.integer :edad
      t.references :curso, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
