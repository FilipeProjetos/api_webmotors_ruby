require_relative "base_api"
require "httparty"

class Model < BaseApi
  def get_model(payload)
    return self.class.get(
             "/Model?MakeID=1",
             body: payload.to_json,
             headers: {
               "Content-Type": "application/json",
             },
           )
  end
end