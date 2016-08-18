require 'test_helper'

class CursoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
  	@cursoList = Curso.all 
  	@cursoFirst = cursos(:two)
  end

  test "Validar que al menos exista un curso" do
  	assert (@cursoList.length != 0)
  end

  test "valida que un curso tenga un salon asignado" do
  	assert (@cursoFirst.salon_id != nil)
  end
end
