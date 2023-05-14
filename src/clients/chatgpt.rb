class Clients::ChatGPT
  def initialize
    @api_key = ENV['CHAT_GPT_API_KEY']
  end

  def send_message(message)
    client = OpenaiChatgpt::Client.new(api_key: @api_key)
    client.completions(
      model: 'gpt-3.5-turbo-0301',
      messages: [
        {
          role: "user",
          content: message,
        }
      ]
    ).raw_response.choices.first.message.content
  end
end