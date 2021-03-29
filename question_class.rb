class Question
  attr_reader :var1, :var2
  def initialize
    @var1 = rand(1...20)
    @var2 = rand(1...20)
  end

  def output
      "What is #{var1} + #{var2}?"
    end

  def answer
    return (var1 + var2).to_s
  end
end

question1 = Question.new
puts question1.var1
question2 = Question.new
puts question2.output
puts question2.answer