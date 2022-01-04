require './game'

class Question 
  attr_reader :answer

  def initialize
    answer = -1
  end 

  def make_question
    number = Random.new
    first_number = number.rand(100)
    second_number = number.rand(100)
    @answer = first_number + second_number
    "What is #{first_number} + #{second_number} equal to? "
  end
end