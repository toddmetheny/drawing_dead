# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
require 'securerandom'

def secure_token
	token_file = Rails.root.join('.secret')
	if File.exist?(token_file)
		#Use the existing token
		File.read(token_file).chomp
	else
		#Generate a new token and store it in token file
		token = SecureRandom.hex(64)
		File.write(token_file, token)
		token
	end
end


DrawingDead::Application.config.secret_key_base = 'dd8f0fbe2e31a859e50fe5c202bef2536013e18a150e7ac211bb5b2bef1bb9588c931ceef40b29e9b2fe6cf216bd86a8e20949549243ad4248411b64d87e6eac'
