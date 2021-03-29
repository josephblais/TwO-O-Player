class Question
  attr_reader :answer
  def initialize
    @var1 = rand(1...20)
    @var2 = rand(1...20)
    @answer = @var1 + @var2
  end

  def output
      "What is #{@var1} + #{@var2}?"
    end

  def check_solution(input)
    input == @answer
  end
end

# question1 = Question.new
# # puts question1.var1
# question2 = Question.new
# puts question2.output
# puts question2.answer(5)