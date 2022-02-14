require_relative "base_api"
require "httparty"

class Vehicles < BaseApi
  def get_vehicle(payload)
    return self.class.get(
             "/Vehicles?Page=1",
             body: payload.to_json,
             headers: {
               "Content-Type": "application/json",
             },
           )
  end
end