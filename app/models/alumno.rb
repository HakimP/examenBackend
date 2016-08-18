class Alumno < ActiveRecord::Base
  belongs_to :curso


  scope :alumnos_menor_edad, -> { where("edad < 18") }

  scope :alumnos_mayor_edad, -> { where("edad > 18") }

  scope :alumnos_con_curso, -> { where("curso_id != null") }
end
