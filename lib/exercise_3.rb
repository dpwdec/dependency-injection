class EmailClient

  def initialize(message_class = Message)
    @message_class = message_class
  end

  def message
    @message_class.new
  end
end

class Message
  def send(to, body)
    # Imagine I'm sending an email
  end
end

class SayHello

  def initialize(client_class = EmailClient)
    @client_class = client_class
  end

  def run
    email = @client_class.new
    email.message.send(
      "friend@example.com",
      "HELLO!"
    )
  end
end
