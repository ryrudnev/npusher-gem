require 'npusher/version'
require 'httparty'
require 'json'

module Npusher
  class Pusher
    attr_accessor :app, :token, :secret, :host, :port
    attr_reader :result
    
    def initialize(app, token, secret, host, port)
      @app = app
      @token = token
      @secret = secret
      @host = host
      @port = port
    end

    def trigger(path, data)
      byebug
      @result = HTTParty.post("#{create_base_url}#{path}",
        body: data.to_json,
        basic_auth: { username: @token, password: @secret },
        headers: { 'Content-Type' => 'application/json' }
      )
    end

    private

    def create_base_url
      "#{@host}:#{@port}/api/apps/#{@app}"
    end
  end
end
