require "httparty"

class BaseApi
  include HTTParty
  base_uri "https://desafioonline.webmotors.com.br/api/OnlineChallenge"
end
