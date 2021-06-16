require 'webpush'

Webpush.payload_send(
  message: 'Hello from ruby',
  endpoint: 'https://updates.push.services.mozilla.com/wpush/v2/gAAAAABgyctc_e9LAGUZ79HeWlYeB1GFxz2u0lZbgM23fY2kYOGYigiVUTyft6Cpf4Jqu-ByrpEL8jPndciu5mGhxYtors4Xvnwo10SxNO2cdiAw0iNhI161NLfGZBO-AWlnRtMW5_dkvOApJaKeA9ZS-sb5kF9EUcmaolZfFLevaADC5NslB8Q',
  p256dh: 'BBz8rqpu-p-HZSLn6lx2xAKeTKcqcXDzFavh2CUmHWxkA-oUB8FjVsEzyndKWC4xiFZiPabvgJLZYodbw1vbTVY',
  auth: '3DRHG9B96HmVZtcyHFOwJg',
  vapid: {
    subject: 'Hello from ruby',
    public_key: 'BJ64lCDXDOfMMbWVi9WhGfAzxte8KAOjqmWrbeGMvqVVpDkT0EsX6dWe1ordi9DD62hgyYLWcyORwmmPuyBLUag',
    private_key: 'ezm365nLIs1EzrCecoaoUV2YU0WOJvZqqiSNHlzI8Fk'
  }
)
