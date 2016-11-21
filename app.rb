require "sinatra"
require "sinatra/reloader"
require "rqrcode"

get "/" do
  @qrcode = RQRCode::QRCode.new(SecureRandom.hex, size: 4, level: :h)
  erb :index
end
