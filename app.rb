require "sinatra"
require "sinatra/reloader"
require "rqrcode"

get "/" do
  @qrcode = RQRCode::QRCode.new(SecureRandom.uuid, size: 12, level: :h)
  erb :index
end
