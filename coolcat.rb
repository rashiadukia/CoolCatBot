require 'telegram/bot'
token = '439960873:AAGMPWjKMZcK3Wu_zbMchF8f2OMrduyPCe0'
Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
      case message.text
      when '/hello'
        bot.api.send_message(chat_id: message.chat.id, text: "Welcome #{message.from.first_name}")
      when '/birthdate'
        bot.api.send_message(chat_id: message.chat.id, text: "16/09/1996 #{message.from.first_name}")
      when '/sunshine'
        bot.api.send_message(chat_id: message.chat.id, text: "Virgo #{message.from.first_name}")
  end
  end
  end
