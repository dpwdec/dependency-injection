require 'exercise_3'

describe SayHello do
  describe '#run' do
    it 'sends a message' do
      message = double("message")

      # only need message class double if testing EmailClient
      #message_class = double("message class", new: email)

      email = double("email", message: message)
      email_class = double("email class", new: email)

      subject = described_class.new(email_class)
      expect(message).to receive(:send)
      subject.run
    end
  end
end
