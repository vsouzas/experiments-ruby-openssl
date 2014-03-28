#!/usr/bin/ruby

#Reference: http://kalmbach.wordpress.com/2013/01/10/encrypting-data-with-openssl-and-ruby/

require 'openssl'
require 'base64'

public_key = File.read 'public-key.pem'
plain_data = 'My secret is the color blue'

key = OpenSSL::PKey::RSA.new public_key
encrypted_data = key.public_encrypt plain_data
#string = Base64.encode64(encrypted_data)

private_key = File.read 'private-key.pem'
password = ''

key = OpenSSL::PKey::RSA.new private_key, password
dec_plain_data = key.private_decrypt encrypted_data

puts dec_plain_data

