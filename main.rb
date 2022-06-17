# frozen_string_literal: true

require "discorb"
require "dotenv/load"  # Load environment variables from .env file.

client = Discorb::Client.new  # Create client for connecting to Discord

client.once :standby do
  puts "Logged in as #{client.user}"  # Prints username of logged in user
end

client.run ENV["TOKEN"]  # Starts client
