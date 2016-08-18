require 'test_helper'

class SalonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup 
  	@salon = salons(:one)
  	@salon2 = salons(:two)
  end
  test "Que el salon tenga un nombre menor a 3 letras" do
  	assert (@salon.nombre.length >= 3)
  	assert_not (@salon2.nombre.length >= 3)
  end

end
