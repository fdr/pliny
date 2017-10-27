module Pliny::Helpers
  module Encode
    def encode(object)
      content_type :json, charset: 'utf-8'
      p object
      out = MultiJson.encode(object, pretty: params[:pretty] == 'true' || Config.pretty_json)
      p out
      out
    end
  end
end
