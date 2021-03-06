module SmsTool
  @client = Twilio::REST::Client.new
  def self.send_sms(number:, message:)
    @client.messages.create({
      from: ENV['TWILIO_PHONE_NUMBER'],
      to: "+1#{number}",
      body: "#{message}"
    })
  end
end 
