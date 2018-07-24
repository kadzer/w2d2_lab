require('minitest/autorun')
require_relative('../person')

class PersonTest < MiniTest::Test

  def setup()
      @person = Person.new("Robert", 36)
  end

end
