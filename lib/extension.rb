class Greeter

  def initialize(kernal = Kernel)
    @kernel = kernal
  end

  def greet
    puts "What is your name?"
    name = @kernel.gets.chomp
    puts "Hello, #{name}"
  end
end
