require_relative "base_api"
require "httparty"

class Make < BaseApi
  def get_make(payload)
    return self.class.get(
             "/Make",
             body: payload.to_json,
             headers: {
               "Content-Type": "application/json",
             },
           )
  end
end
