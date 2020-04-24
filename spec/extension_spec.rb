require 'extension'

describe Greeter do

  let(:gets) { double("gets", chomp: "Jimothy") }
  let(:kernel) { double("kernel", gets: gets) }
  let(:subject) { described_class.new(kernel) }

  describe '#greet' do
    it 'says hello to name' do
      expect { subject.greet }.to output("What is your name?\nHello, Jimothy\n").to_stdout
    end
  end
end
