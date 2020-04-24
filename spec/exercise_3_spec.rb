require 'exercise_3'

describe SayHello do

  let(:message) { double("message") }
  let(:email) { double("email", message: message) }
  let(:email_class) { double("email class", new: email) }
  let(:subject) { described_class.new(email_class) }

  describe '#run' do
    it 'sends a message' do
      expect(message).to receive(:send)
      subject.run
    end
  end
end
