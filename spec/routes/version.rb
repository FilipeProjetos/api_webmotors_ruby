require_relative "base_api"
require "httparty"

class Version < BaseApi
  def get_version(payload)
    return self.class.get(
             "/Version?ModelID=1",
             body: payload.to_json,
             headers: {
               "Content-Type": "application/json",
             },
           )
  end
end