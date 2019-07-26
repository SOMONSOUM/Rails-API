class QrcodesController < ApplicationController
    def index
      @qrcodes = Qrcode.all
      @qr = RQRCode::QRCode.new("12323", :size => 2, :level => :m, :mode => :number )
    end
end
